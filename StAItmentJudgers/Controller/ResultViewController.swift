//
//  ResultViewController.swift
//  StAItmentJudgers
//
//  Created by FDN-Fajri Ramadhan on 23/09/19.
//  Copyright © 2019 IBM. All rights reserved.
//

import UIKit
import PersonalityInsights

class ResultViewController: UIViewController {
    
    lazy var collectionView: UICollectionView = {
        let tv = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .black
        tv.dataSource = self
        tv.delegate = self
        return tv
    }()
    
    var profileData: Profile? {
        didSet {
            updateData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCoolectionView()
        title = "Result"
    }
    
    func updateData() {
        collectionView.reloadData()
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
    
    func checkArray(item : AnyObject) -> Bool {
        return item is Array<AnyObject>
    }
    
//    func transformValue(data: Profile) -> Array<Any> {
//        let v = profileData.flatMap(<#T##transform: (Profile) throws -> U?##(Profile) throws -> U?#>)
//    }
}

extension ResultViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCell", for: indexPath) as! GraphCollectionViewCell
        cell.profileData = profileData
        switch indexPath.item {
        case 0:
            cell.titleLabel.text = "Personality"
        case 1:
            cell.titleLabel.text = "Consumer Needs"
        case 2:
            cell.titleLabel.text = "Values"
        default:
            break
        }
        cell.tableView.reloadData()
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
