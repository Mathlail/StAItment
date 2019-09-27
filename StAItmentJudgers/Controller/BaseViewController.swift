//
//  BaseViewController.swift
//  StAItmentJudgers
//
//  Created by FDN-Fajri Ramadhan on 26/09/19.
//  Copyright © 2019 IBM. All rights reserved.
//

import UIKit
import PersonalityInsights
import NVActivityIndicatorView

class BaseViewController: UIViewController, UITextViewDelegate, NVActivityIndicatorViewable {
    var delegate: DetailSpeechDelegate?
    
    lazy var commonView: CommonInputView = {
       let vw = CommonInputView()
        vw.speechTextView.delegate = self
        vw.closeButton.addTarget(self, action: #selector(back), for: .touchUpInside)
        vw.analyzeButton.addTarget(self, action: #selector(didTapAnalyze), for: .touchUpInside)
        return vw
    }()
    
    override func loadView() {
        view = commonView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Title"
    }
    
    func textViewDidChange(_ textView: UITextView) {
        print(commonView.speechTextView.text)
        commonView.speechTextView.translatesAutoresizingMaskIntoConstraints = true
        let fixedWidth = commonView.speechTextView.frame.size.width
        textView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        let newSize = textView.sizeThatFits(CGSize(width: fixedWidth, height: CGFloat.greatestFiniteMagnitude))
        let newHeight = newSize.height < 150 ? 150 : newSize.height
        var newFrame = textView.frame
        newFrame.size = CGSize(width: max(newSize.width, fixedWidth), height: newHeight)
        textView.frame = newFrame
    }
    
    
    func getCurrentDate() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-dd-MM"
        return formatter.string(from: date)
    }
    
    @objc func didTapAnalyze() {
        let personalityInsights = PersonalityInsights(version: getCurrentDate(), apiKey: "j5kpTWXOsrFmESBjtq2-bN2O2SkZn2WuC1ry1b-dnEu8")
        personalityInsights.serviceURL = "https://gateway-syd.watsonplatform.net/personality-insights/api"
        var stringToAnalyze = ""
        if commonView.speechTextView.isHidden {
            if commonView.URLTextfield.text?.isEmpty ?? true {
                showAlert(message: "URL cannot be empty", title: "ERROR")
                return
            }
            personalityInsights.defaultHeaders["Content-Type"] = "text/html;charset=utf-8"
            guard let url = URL(string: commonView.URLTextfield.text ?? "") else { return }
            do {
                stringToAnalyze = try String(contentsOf: url)
            } catch {
                print("error")
            }
        } else {
            if commonView.speechTextView.text.count < 100 {
                showAlert(message: "Your text must have more than 100 character", title: "ERROR")
                return
            }
            stringToAnalyze = commonView.speechTextView.text
            personalityInsights.defaultHeaders["Content-Type"] = "text/plain;charset=utf-8"
        }
        print(stringToAnalyze)
        showLoading()
        personalityInsights.profile(profileContent: ProfileContent.text(stringToAnalyze)) {
            response, error in

            guard let profile = response?.result else {
                print(error?.localizedDescription ?? "unknown error")
                return
            }
            DispatchQueue.main.async {
                self.stopAnimating(nil)
                self.dismiss(animated: true, completion: {
                    self.delegate?.didEndAnalyze(profile: profile)
                })
            }
            
        }
    }
    
    func showLoading() {
        let size = CGSize(width: 90, height: 90)
        startAnimating(size, message: "Analyzing...", type: .lineScalePulseOutRapid, color: .white, fadeInAnimation: nil)
    }
    
    func showAlert(message: String, title: String = "") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @objc func back() {
        dismiss(animated: true, completion: nil)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.white
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Input Text Here"
            textView.textColor = UIColor.lightGray
        }
    }
    

}
