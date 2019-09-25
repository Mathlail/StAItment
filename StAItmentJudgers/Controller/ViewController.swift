//
//  ViewController.swift
//  StAItmentJudgers
//

import UIKit
import BMSCore
import PersonalityInsights

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(didBecomeActive), name: UIApplication.didBecomeActiveNotification, object: nil)
        
//        let personalityInsights = PersonalityInsights(version: "2017-10-13", apiKey: "j5kpTWXOsrFmESBjtq2-bN2O2SkZn2WuC1ry1b-dnEu8")
//        personalityInsights.serviceURL = "https://gateway-syd.watsonplatform.net/personality-insights/api"
//        personalityInsights.defaultHeaders["Content-Type"] = "text/plain;charset=utf-8"
//        personalityInsights.defaultHeaders["X-Watson-Learning-Opt-Out"] = "true"
//
//        do {
//            let url = Bundle.main.url(forResource: "test", withExtension: "htm")!
//            let htmlString = try String(contentsOf: url)
//            personalityInsights.profile(profileContent: ProfileContent.html(htmlString)) {
//                response, error in
//
//                guard let profile = response?.result else {
//                    print(error?.localizedDescription ?? "unknown error")
//                    return
//                }
//                print(personalityInsights.defaultHeaders)
//                print(profile)
//
//            }
//        } catch {
//            print("error")
//        }
    }

    @objc func didBecomeActive(_ notification: Notification) {
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
