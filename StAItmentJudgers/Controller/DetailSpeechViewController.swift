//
//  DetailSpeechViewController.swift
//  StAItmentJudgers
//
//  Created by FDN-Fajri Ramadhan on 20/09/19.
//  Copyright © 2019 IBM. All rights reserved.
//

import UIKit
import PersonalityInsights

class DetailSpeechViewController: UIViewController {
    
    lazy var scroll: UIScrollView = {
        let sc = UIScrollView()
        sc.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 11.0, *) {
            sc.backgroundColor = UIColor(named: "Dark")
            sc.contentInsetAdjustmentBehavior = .never
        } else {
            // Fallback on earlier versions
        }
        sc.isScrollEnabled = true
        return sc
    }()
    
    lazy var innerView: UIView = {
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 11.0, *) {
            vw.backgroundColor = UIColor(named: "Dark")
        } else {
            // Fallback on earlier versions
        }
        return vw
    }()
    
    lazy var speechTextView: UITextView = {
        let tf = UITextView()
        tf.isScrollEnabled = false
        if #available(iOS 11.0, *) {
            tf.backgroundColor = UIColor(named: "Dark")
        } else {
            // Fallback on earlier versions
        }
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.textColor = .white
        return tf
    }()
    
    lazy var safeAreaView: UIView = {
        let vw = UIView()
        if #available(iOS 11.0, *) {
            vw.backgroundColor = UIColor(named: "Dark")
        } else {
            // Fallback on earlier versions
        }
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    lazy var imageFigure: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    lazy var closeButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(#imageLiteral(resourceName: "close"), for: .normal)
        button.addTarget(self, action: #selector(back), for: .touchUpInside)
        return button
    }()
    
    lazy var analyzeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Analyze", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
        button.addTarget(self, action: #selector(didTapAnalyze), for: .touchUpInside)
        button.backgroundColor = .black
        return button
    }()
    
    
    var speechModel: SpeechModel?
    var heightConstraint: NSLayoutConstraint?
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextfield()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let speech = speechModel else { return }
        let speechText = getSpeech(figure: speech.speechText)
        speechTextView.text = speechText
        imageFigure.image = speech.image
        heightConstraint?.constant = speechText.getTextHeight(UIScreen.main.bounds.width - 30 , font: UIFont.systemFont(ofSize: 14)) + 25
    }
    
    func setupTextfield() {
        view.addSubview(scroll)
        scroll.addSubview(innerView)
        innerView.addSubview(speechTextView)
        innerView.addSubview(imageFigure)
        innerView.addSubview(closeButton)
        view.addSubview(analyzeButton)
        view.addSubview(safeAreaView)
        
        heightConstraint = NSLayoutConstraint(item: speechTextView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1.0, constant: 20)
        heightConstraint?.isActive = true
        NSLayoutConstraint.activate([
            
            safeAreaView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            safeAreaView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            safeAreaView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            safeAreaView.heightAnchor.constraint(equalToConstant: UIWindow().getInsetSafeArea().bottom),
            
            analyzeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            analyzeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            analyzeButton.heightAnchor.constraint(equalToConstant: 50),
            analyzeButton.bottomAnchor.constraint(equalTo: safeAreaView.topAnchor),
            
            scroll.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scroll.topAnchor.constraint(equalTo: view.topAnchor),
            scroll.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scroll.bottomAnchor.constraint(equalTo: analyzeButton.topAnchor),
            
            innerView.leadingAnchor.constraint(equalTo: scroll.leadingAnchor),
            innerView.topAnchor.constraint(equalTo: scroll.topAnchor),
            innerView.trailingAnchor.constraint(equalTo: scroll.trailingAnchor),
            innerView.widthAnchor.constraint(equalTo: scroll.widthAnchor),
            innerView.bottomAnchor.constraint(equalTo: scroll.bottomAnchor),
            
            imageFigure.leadingAnchor.constraint(equalTo: innerView.leadingAnchor),
            imageFigure.topAnchor.constraint(equalTo: innerView.topAnchor),
            imageFigure.trailingAnchor.constraint(equalTo: innerView.trailingAnchor),
            imageFigure.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 7/6),
            
            speechTextView.leadingAnchor.constraint(equalTo: innerView.leadingAnchor, constant: 10),
            speechTextView.topAnchor.constraint(equalTo: imageFigure.bottomAnchor, constant: 20),
            speechTextView.trailingAnchor.constraint(equalTo: innerView.trailingAnchor, constant: -10),
            speechTextView.bottomAnchor.constraint(equalTo: innerView.bottomAnchor),
            
            closeButton.topAnchor.constraint(equalTo: imageFigure.topAnchor, constant: 30),
            closeButton.trailingAnchor.constraint(equalTo: imageFigure.trailingAnchor, constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 35),
            closeButton.widthAnchor.constraint(equalToConstant: 35),
        ])
        
    }
    
    @objc func back() {
        dismiss(animated: true, completion: nil)
    }
    
    func getCurrentDate() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-dd-MM"
        return formatter.string(from: date)
    }
    
    @objc func didTapAnalyze() {
        
//        let personalityInsights = PersonalityInsights(version: getCurrentDate(), apiKey: "j5kpTWXOsrFmESBjtq2-bN2O2SkZn2WuC1ry1b-dnEu8")
//        personalityInsights.serviceURL = "https://gateway-syd.watsonplatform.net/personality-insights/api"
//        personalityInsights.defaultHeaders["Content-Type"] = "text/plain;charset=utf-8"
//        personalityInsights.defaultHeaders["X-Watson-Learning-Opt-Out"] = "true"
//        personalityInsights.profile(profileContent: ProfileContent.text(speechTextView.text)) {
//            response, error in
//
//            guard let profile = response?.result else {
//                print(error?.localizedDescription ?? "unknown error")
//                return
//            }
//            print(profile)
//
//        }
    }

    
}

extension String {
    func getTextHeight(_ width: CGFloat, font: UIFont) -> CGFloat {
        var size = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let frame = (self as NSString).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font : font], context: nil)
        size = CGSize(width: frame.width, height: frame.height)
        
        return round(size.height) + 1
    }
}

extension UIView {
    var safeTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.topAnchor
        }
        return self.topAnchor
    }
    
    var safeBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.bottomAnchor
        }
        return self.bottomAnchor
    }
}

extension UIWindow {
    func getInsetSafeArea() -> (bottom: CGFloat, top: CGFloat) {
        if #available(iOS 11, *) {
            return (bottom: self.safeAreaInsets.bottom, top: self.safeAreaInsets.top)
        }
        return (bottom: 0, top: 0)
    }
}
