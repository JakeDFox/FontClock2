//
//  GlowLabel.swift
//  Font-Clock-2
//
//  Created by Jacob Fox on 2017-09-19.
//  Copyright © 2017 Jacob Fox. All rights reserved.
//

import UIKit

class GlowLabel: UILabel {
    override func awakeFromNib() {
        
        }
    func glowYellow() {
        layer.shadowColor = UIColor.yellow.cgColor
        layer.shadowRadius = 5.0
        layer.shadowOpacity = 0.9
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.masksToBounds = false
    }
    func glowBlue() {
        layer.shadowColor = UIColor.blue.cgColor
        layer.shadowRadius = 6.0
        layer.shadowOpacity = 0.9
        layer.shadowOffset = CGSize(width: 0, height: 0)
        layer.masksToBounds = false
    }
}
