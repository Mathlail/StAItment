//
//  GraphCollectionViewCell.swift
//  StAItmentJudgers
//
//  Created by FDN-Fajri Ramadhan on 23/09/19.
//  Copyright © 2019 IBM. All rights reserved.
//

import UIKit
import PersonalityInsights

class GraphCollectionViewCell: UICollectionViewCell {
    
    lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Personality"
        return label
    }()
    
    lazy var bannerView: UIView = {
        let view = UIView()
        view.layer.masksToBounds = true
        view.clipsToBounds = true
        view.layer.cornerRadius = 9
        view.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 11.0, *) {
            view.backgroundColor = UIColor(named: "Dark")
        } else {
            // Fallback on earlier versions
        }
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(bannerView)
        bannerView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            bannerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22),
            bannerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            bannerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -22),
            bannerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            titleLabel.leadingAnchor.constraint(equalTo: bannerView.leadingAnchor, constant: 10),
            titleLabel.topAnchor.constraint(equalTo: bannerView.topAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: bannerView.trailingAnchor, constant: -10),
            
        ])
        for i in 1...5 {
            let targetLabel = UILabel(frame: CGRect(x: 20, y: i * , width: Int(self.frame.width - 44 - 40), height: 25))
//            let graph = UIProgressView(frame: CGRect(x: 20, y: i * (30 + 25), width: Int(self.frame.width - 44 - 40), height: 25))
//            graph.tintColor = .white
//            graph.progress = 0.5
            targetLabel.layer.masksToBounds = true
            targetLabel.layer.cornerRadius = 5
            targetLabel.textAlignment = .center
            targetLabel.textColor = .black
            targetLabel.text = String("\(i)")
            bannerView.addSubview(targetLabel)
//            bannerView.addSubview(graph)
        }
    }
    
}
