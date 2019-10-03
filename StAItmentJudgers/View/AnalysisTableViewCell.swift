//
//  AnalysisTableViewCell.swift
//  StAItmentJudgers
//
//  Created by FDN-Fajri Ramadhan on 25/09/19.
//  Copyright © 2019 IBM. All rights reserved.
//

import UIKit

class AnalysisTableViewCell: UITableViewCell {
    
    lazy var personalityLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Openesss"
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.textColor = .white
        return label
    }()
    
    lazy var percentageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "90%"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .white
        return label
    }()
    
    lazy var progressView: UIProgressView = {
        let pr = UIProgressView()
        pr.progressTintColor = .black
        pr.translatesAutoresizingMaskIntoConstraints = false
        pr.setProgress(0.5, animated: true)
        return pr
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(personalityLabel)
        addSubview(progressView)
        addSubview(percentageLabel)
        
        NSLayoutConstraint.activate([
            personalityLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            personalityLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            
            progressView.leadingAnchor.constraint(equalTo: personalityLabel.leadingAnchor),
            progressView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            progressView.topAnchor.constraint(equalTo: personalityLabel.bottomAnchor, constant: 10),
            
            percentageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            percentageLabel.topAnchor.constraint(equalTo: personalityLabel.topAnchor),
        ])
    }

}
