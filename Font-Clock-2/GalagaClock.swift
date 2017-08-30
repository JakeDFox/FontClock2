//
//  GalagaClock.swift
//  Font-Clock-2
//
//  Created by Jacob Fox on 2017-08-25.
//  Copyright © 2017 Jacob Fox. All rights reserved.
//

import UIKit

class GalagaClock: UIViewController {

    var timer: Timer!
    var dateTimer: Timer!
    var dateString: NSString!
  
    @IBOutlet weak var timeFace: UILabel!
    
    @IBOutlet weak var dateFace: UILabel!
    @IBOutlet weak var galagaImg: GalagaImg!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setTimeFace()
        setDateFace()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setTimeFace() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.setTimeFace), userInfo: nil, repeats: false)
        let date: NSDate = NSDate()
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a"
        dateString = dateFormatter.string(from: date as Date) as NSString!
        timeFace.text = dateString as String
        
        
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
