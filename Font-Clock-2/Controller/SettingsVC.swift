//
//  SettingsVC.swift
//  Font-Clock-2
//
//  Created by Jacob Fox on 2017-09-27.
//  Copyright © 2017 Jacob Fox. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
var setDefault = ""
    @IBOutlet weak var setDefaultLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultLbl.text = setDefault

        
    }
}
