//
//  NixieVC.swift
//  Font-Clock-2
//
//  Created by Jacob Fox on 2017-09-01.
//  Copyright © 2017 Jacob Fox. All rights reserved.
//

import UIKit

class NixieVC: UIViewController {

    var timer: Timer!
    var dateTimer: Timer!
    var dateString: NSString!
    @IBOutlet weak var timeFace: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setTimeFace()
      /*  setDateFace() */
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setTimeFace() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.setTimeFace), userInfo: nil, repeats: false)
        let date: NSDate = NSDate()
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h mm"
        dateString = dateFormatter.string(from: date as Date) as NSString!
        timeFace.text = dateString as String
        
        
    }
    
    
}

