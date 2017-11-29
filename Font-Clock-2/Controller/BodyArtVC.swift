//
//  BodyArtVC.swift
//  Font-Clock-2
//
//  Created by Jacob Fox on 2017-11-05.
//  Copyright © 2017 Jacob Fox. All rights reserved.
//
import UIKit

class BodyArtVC: UIViewController {

    var timer: Timer!
    var dateTimer: Timer!
    var dateString: NSString!
    var hourString: NSString!
    @IBOutlet weak var timeFace: UILabel!
    @IBOutlet weak var dateFace: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.isIdleTimerDisabled = true
        setTimeFace()
        setDateFace()

    }
    
    func toWords<N>(number: N) -> String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        
        switch number {
        case is Int, is UInt, is Float, is Double:
            return formatter.string(from: number as! NSNumber)
        case is NSString:
            if let number = Double(number as! String) {
                return formatter.string(from: NSNumber(floatLiteral: number))
            }
        default:
            break
        }
        return nil
    }

    
    func setTimeFace() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.setTimeFace), userInfo: nil, repeats: false)
        let date: NSDate = NSDate()
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h mm"
        hourString = dateFormatter.string(from: date as Date) as NSString!
        timeFace.text = hourString as String
    }
    
    func setDateFace() {
        dateTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.setDateFace), userInfo: nil, repeats: false)
        let date: NSDate = NSDate()
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE MMM dd yyyy"
        dateString = dateFormatter.string(from: date as Date) as NSString!
        dateFace.text = dateString as String
    }

}

