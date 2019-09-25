//
//  ResultViewController.swift
//  StAItmentJudgers
//
//  Created by FDN-Fajri Ramadhan on 23/09/19.
//  Copyright © 2019 IBM. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    lazy var collectionView: UICollectionView = {
        let tv = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .black
        tv.dataSource = self
        tv.delegate = self
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCoolectionView()
    }
    
    func setupCoolectionView() {
        collectionView.register(GraphCollectionViewCell.self, forCellWithReuseIdentifier: "UICollectionViewCell")
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

extension ResultViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCell", for: indexPath) as! GraphCollectionViewCell
        return cell
    }
}

extension ResultViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize = UIScreen.main.bounds
        return CGSize(width: screenSize.width, height: (collectionView.frame.height / 1.8))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}
