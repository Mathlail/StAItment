//
//  CommonInputView.swift
//  StAItmentJudgers
//
//  Created by FDN-Fajri Ramadhan on 26/09/19.
//  Copyright © 2019 IBM. All rights reserved.
//

import UIKit

class CommonInputView: UIControl {
    lazy var URLTextfield: UITextField = {
       let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor.white
        tf.textColor = .black
        tf.placeholder = "Input URL"
        tf.borderStyle = UITextField.BorderStyle.bezel
        tf.keyboardType = UIKeyboardType.URL
        return tf
    }()
    
    lazy var scroll: UIScrollView = {
        let sc = UIScrollView()
        sc.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 11.0, *) {
            sc.contentInsetAdjustmentBehavior = .never
        } else {
            // Fallback on earlier versions
        }
        sc.backgroundColor = UIColor().getDarkColor()
        sc.isScrollEnabled = true
        return sc
    }()
    
    lazy var innerView: UIControl = {
        let vw = UIControl()
        vw.translatesAutoresizingMaskIntoConstraints = false
        vw.backgroundColor = UIColor().getDarkColor()
        
        return vw
    }()
    
    lazy var analyzeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Analyze", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
//        button.addTarget(self, action: #selector(didTapAnalyze), for: .touchUpInside)
        button.backgroundColor = .black
        return button
    }()
    
    lazy var speechTextView: UITextView = {
        let tf = UITextView()
        tf.isScrollEnabled = false
        tf.backgroundColor = UIColor.black
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.textColor = UIColor.lightGray
        tf.text = "Input Text Here"
        return tf
    }()
    
    lazy var safeAreaView: UIView = {
        let vw = UIView()
        vw.backgroundColor = UIColor().getDarkColor()
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    lazy var closeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(#imageLiteral(resourceName: "close"), for: .normal)
        
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor().getDarkColor()
        setupView()
    }
    
    func hiddenTextview(isHidden: Bool) {
        speechTextView.isHidden = isHidden
        URLTextfield.isHidden = !isHidden
    }
    
    
    @objc func hideKeyboard() {
        self.endEditing(true)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(safeAreaView)
        addSubview(analyzeButton)
        self.addSubview(scroll)
        scroll.addSubview(innerView)
        innerView.addSubview(URLTextfield)
        innerView.addSubview(speechTextView)
        innerView.addSubview(closeButton)
        
        NSLayoutConstraint.activate([
            safeAreaView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            safeAreaView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            safeAreaView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            safeAreaView.heightAnchor.constraint(equalToConstant: UIWindow().getInsetSafeArea().bottom),
            
            analyzeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            analyzeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            analyzeButton.heightAnchor.constraint(equalToConstant: 50),
            analyzeButton.bottomAnchor.constraint(equalTo: safeAreaView.topAnchor),
            
            scroll.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            scroll.topAnchor.constraint(equalTo: self.topAnchor, constant: UIWindow().getInsetSafeArea().top),
            scroll.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            scroll.bottomAnchor.constraint(equalTo: analyzeButton.topAnchor),
            
            innerView.leadingAnchor.constraint(equalTo: scroll.leadingAnchor),
            innerView.topAnchor.constraint(equalTo: scroll.topAnchor),
            innerView.trailingAnchor.constraint(equalTo: scroll.trailingAnchor),
            innerView.widthAnchor.constraint(equalTo: scroll.widthAnchor),
            innerView.bottomAnchor.constraint(equalTo: scroll.bottomAnchor),
            
            URLTextfield.leadingAnchor.constraint(equalTo: innerView.leadingAnchor, constant: 20),
            URLTextfield.topAnchor.constraint(equalTo: closeButton.bottomAnchor, constant: 20),
            URLTextfield.trailingAnchor.constraint(equalTo: innerView.trailingAnchor, constant: -20),
            URLTextfield.heightAnchor.constraint(equalToConstant: 40),
            
            speechTextView.leadingAnchor.constraint(equalTo: innerView.leadingAnchor, constant: 20),
            speechTextView.topAnchor.constraint(equalTo: closeButton.bottomAnchor, constant: 20),
            speechTextView.trailingAnchor.constraint(equalTo: innerView.trailingAnchor, constant: -20),
            speechTextView.bottomAnchor.constraint(equalTo: innerView.bottomAnchor),
            speechTextView.heightAnchor.constraint(equalToConstant: 150),
            
            closeButton.topAnchor.constraint(equalTo: innerView.topAnchor, constant: 30),
            closeButton.trailingAnchor.constraint(equalTo: innerView.trailingAnchor, constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 35),
            closeButton.widthAnchor.constraint(equalToConstant: 35),
        ])
        
    }
    
}
