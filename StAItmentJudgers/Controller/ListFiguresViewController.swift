//
//  ListFiguresViewController.swift
//  StAItmentJudgers
//
//  Created by FDN-Fajri Ramadhan on 19/09/19.
//  Copyright © 2019 IBM. All rights reserved.
//

import UIKit
import SafariServices
import Hero
import PersonalityInsights
import Floaty

class ListFiguresViewController: UIViewController {
    
    lazy var collectionView: UICollectionView = {
        let tv = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .black
        tv.dataSource = self
        tv.delegate = self
        return tv
    }()
    
    var dataSpeches = [SpeechModel]()
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSpeches = [
                      SpeechModel(name: "Joko Wiodo", title: "First Political Speech Since his Reelection", link: "https://www.thejakartapost.com/news/2019/07/15/we-can-be-one-of-strongest-countries-in-world-jokowis-full-speech.html", image: #imageLiteral(resourceName: "jokowi"), speechText: .jokowi),
                      SpeechModel(name: "Prabowo Subianto", title: "First National Address of the Current Election Campaign", link: "https://jakartaglobe.id/context/full-text-of-presidential-candidate-prabowo-subiantos-national-address/", image: #imageLiteral(resourceName: "prabowo"), speechText: .prabowo), SpeechModel(name: "Winston Churchill", title: "We Shall Fight on the Beaches", link: "https://www.artofmanliness.com/we-shall-fight-on-the-beaches-by-winston-churchill/", image: #imageLiteral(resourceName: "winston-churchill"), speechText: .winstonChurchill),
                      SpeechModel(name: "Franklin Delano Roosevelt", title: "First Inaugural Address", link: "https://www.artofmanliness.com/first-inaugural-address-of-franklin-d-roosevelt/", image: #imageLiteral(resourceName: "franklin-d-roosevelt"), speechText: .franklinRoosevelt),
                      SpeechModel(name: "John F. Kennedy", title: "Inauguration Address", link: "https://www.artofmanliness.com/inaugrual-address-of-john-f-kennedy/", image: #imageLiteral(resourceName: "john-f-kennedy"), speechText: .johnFKennedy),
                      SpeechModel(name: "Ronald Reagan", title: "Remarks at the Brandenburg Gate", link: "https://www.artofmanliness.com/address-to-nation-on-the-challenger-by-ronald-regan/", image: #imageLiteral(resourceName: "ronald-reagan"), speechText: .ronaldReagan),
                      SpeechModel(name: "Mahatma Gandhi", title: "Quit India", link: "https://www.artofmanliness.com/quit-india-speech-by-ghandi/", image: #imageLiteral(resourceName: "mahatma-gandhi"), speechText: .mahatmaGandhi),
        ]
        title = "Speeches"
        setupCoolectionView()
        setupFloatingButton()
        
    }
    
    func setupFloatingButton() {
        let button = Floaty()
        button.buttonColor = .black
        button.plusColor = .white
        button.size = 45
        button.paddingX = 25
        button.itemButtonColor = .black
        button.addItem(icon: #imageLiteral(resourceName: "pencil")) { (item) in
            let vc = BaseViewController()
            let heroId = "1"
            button.hero.id = heroId
            vc.hero.isEnabled = true
            vc.commonView.hiddenTextview(isHidden: false)
            vc.commonView.speechTextView.hero.id = heroId
            vc.delegate = self
            self.navigationController?.present(vc, animated: true, completion: nil)
        }
        button.addItem(icon: #imageLiteral(resourceName: "icons8-link-96 (1)")) { (item) in
            let vc = BaseViewController()
            let heroId = "2"
            button.hero.id = heroId
            vc.commonView.hiddenTextview(isHidden: true)
            vc.hero.isEnabled = true
            vc.commonView.URLTextfield.hero.id = heroId
            vc.delegate = self
            self.navigationController?.present(vc, animated: true, completion: nil)
        }
        view.addSubview(button)
    }
    

    func setupCoolectionView() {
        collectionView.register(ListCaseCollectionViewCell.self, forCellWithReuseIdentifier: "UICollectionViewCell")
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }

}

extension ListFiguresViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSpeches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCell", for: indexPath) as! ListCaseCollectionViewCell
        cell.titleLabel.text = dataSpeches[indexPath.item].title
        cell.nameLabel.text = dataSpeches[indexPath.item].name
        cell.imageFigure.image = dataSpeches[indexPath.item].image
        return cell
    }
}

extension ListFiguresViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! ListCaseCollectionViewCell
        let heroId = "cell\(indexPath.item)"
        cell.imageFigure.hero.id = heroId
        let vc = DetailSpeechViewController()
        vc.delegate = self
        vc.hero.isEnabled = true
        vc.speechModel = dataSpeches[indexPath.item]
        vc.view.backgroundColor = .white
        vc.imageFigure.hero.id = heroId
        navigationController?.present(vc, animated: true, completion: nil)
    }
}

extension ListFiguresViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize = UIScreen.main.bounds
        return CGSize(width: screenSize.width, height: 410)
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

extension ListFiguresViewController: DetailSpeechDelegate {
    func didEndAnalyze(profile: Profile) {
        let vc = ResultViewController()
        vc.profileData = profile
        navigationController?.pushViewController(vc, animated: true)
    }
}
