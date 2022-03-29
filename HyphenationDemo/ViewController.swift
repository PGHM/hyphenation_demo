//
//  ViewController.swift
//  HyphenationDemo
//
//  Created by Jussi Päivinen on 29.3.2022.
//

import UIKit

/// Purpose of this project is to present how even one soft hyphen on anywhere in a word will trigger the whole word to
/// be autohyphenated even on locations that do not have soft hyphens. These hyphens appear on text in UILabels and
/// notifications. What makes this bug worse is that system language is used for hyphenation and the hyphens can be in
/// wrong locations for the presented text.
///
/// You should use iOS15 and iPhone SE (3rd edition) simulator to test this with normal text size.

class ViewController: UIViewController, UNUserNotificationCenterDelegate {

    @IBOutlet weak var finnishTextLabel: UILabel!
    
    let finnishText = "L­entokonesuihkuturbiinimoottoriapumekaanikko ei ehtinyt e­päjärjestelmällistyttämättömyydellänsä p­eruspalveluliikelaitoskuntayhtymän kokoukseen, koska valtavan kokoinen k­olmivaihekilowattituntimittari oli juuttunut kiinni k­äsipyyherullajärjestelmään"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        finnishTextLabel.attributedText = NSAttributedString(string: finnishText)
        
        UNUserNotificationCenter.current().delegate = self
    }
    
    @IBAction func showFinnishLocalNotification(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "Extra hyphens appearing here"
        content.body = finnishText
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 0.5, repeats: false)
        let request = UNNotificationRequest.init(identifier: "Finnish notification", content: content, trigger: trigger)
        
        let center = UNUserNotificationCenter.current()
        center.add(request) { _ in }
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner])
    }
}

