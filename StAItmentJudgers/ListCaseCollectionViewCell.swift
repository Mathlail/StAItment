//
//  ListCaseCollectionViewCell.swift
//  Project Tes
//
//  Created by Mathlail Fajri on 08/05/19.
//  Copyright © 2019 Mathlail Fajri. All rights reserved.
//

import UIKit

class ListCaseCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        bannerView.layer.cornerRadius = 9
    }
    
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
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    lazy var imageFigure: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = ContentMode.scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    func setupView() {
        addSubview(bannerView)
        addSubview(titleLabel)
        addSubview(nameLabel)
        bannerView.addSubview(imageFigure)
        
        NSLayoutConstraint.activate([
            bannerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22),
            bannerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            bannerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -22),
            bannerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            nameLabel.topAnchor.constraint(equalTo: bannerView.topAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: bannerView.trailingAnchor, constant: -20),
            nameLabel.leadingAnchor.constraint(equalTo: bannerView.leadingAnchor, constant: 20),
            
            titleLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            titleLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 7),
            
            imageFigure.leadingAnchor.constraint(equalTo: bannerView.leadingAnchor),
            imageFigure.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            imageFigure.trailingAnchor.constraint(equalTo: bannerView.trailingAnchor),
            imageFigure.bottomAnchor.constraint(equalTo: bannerView.bottomAnchor),
            
        ])
        
    }
}
