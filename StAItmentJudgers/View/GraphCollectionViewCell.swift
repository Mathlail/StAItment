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
        label.font = UIFont.boldSystemFont(ofSize: 16)
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
        view.backgroundColor = UIColor().getDarkColor()
        return view
    }()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.backgroundColor = UIColor.clear
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.separatorStyle = .none
        tv.dataSource = self
        tv.delegate = self
        return tv
    }()
    
    var profileData: Profile?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        tableView.register(AnalysisTableViewCell.self, forCellReuseIdentifier: "AnalysisTableViewCell")
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(bannerView)
        bannerView.addSubview(titleLabel)
        bannerView.addSubview(tableView)
        NSLayoutConstraint.activate([
            bannerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 22),
            bannerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            bannerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -22),
            bannerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            tableView.leadingAnchor.constraint(equalTo: bannerView.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: bannerView.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bannerView.bottomAnchor),
            tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            
            titleLabel.leadingAnchor.constraint(equalTo: bannerView.leadingAnchor, constant: 10),
            titleLabel.topAnchor.constraint(equalTo: bannerView.topAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: bannerView.trailingAnchor, constant: -10),
            
        ])
    }
}

extension GraphCollectionViewCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnalysisTableViewCell", for: indexPath) as! AnalysisTableViewCell
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor.clear
        switch titleLabel.text {
        case "Personality":
            let personalityData = profileData?.personality.sorted(by: {$0.percentile > $1.percentile})
            let percentage = String(format: "%.2f", personalityData?[indexPath.row].percentile ?? 0)
            cell.personalityLabel.text = personalityData?[indexPath.row].name
            cell.percentageLabel.text = "\(Int(percentage.floatValue * 100))%"
            cell.progressView.setProgress(percentage.floatValue, animated: true)
        case "Consumer Needs":
            let personalityData = profileData?.needs.sorted(by: {$0.percentile > $1.percentile})
            let percentage = String(format: "%.2f", personalityData?[indexPath.row].percentile ?? 0)
            cell.personalityLabel.text = personalityData?[indexPath.row].name
            cell.percentageLabel.text = "\(Int(percentage.floatValue * 100))%"
            cell.progressView.setProgress(percentage.floatValue, animated: true)
        case "Values":
            let personalityData = profileData?.values.sorted(by: {$0.percentile > $1.percentile})
            let percentage = String(format: "%.2f", personalityData?[indexPath.row].percentile ?? 0)
            cell.personalityLabel.text = personalityData?[indexPath.row].name
            cell.percentageLabel.text = "\(Int(percentage.floatValue * 100))%"
            cell.progressView.setProgress(percentage.floatValue, animated: true)
        default:
            break
        }
        return cell
    }
}

extension GraphCollectionViewCell: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.tableView.frame.height / 5
    }
}


extension String {
    var floatValue: Float {
        return (self as NSString).floatValue
    }
}

extension UIColor {
    func getDarkColor() -> UIColor {
        if #available(iOS 11.0, *) {
            return UIColor(named: "Dark") ?? UIColor.darkGray
        } else {
            return UIColor.darkGray
        }
    }
}
