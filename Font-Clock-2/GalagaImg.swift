//
//  GalagaImg.swift
//  Font-Clock-2
//
//  Created by Jacob Fox on 2017-08-25.
//  Copyright © 2017 Jacob Fox. All rights reserved.
//

import Foundation
import UIKit

class GalagaImg: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        playBckgrndAnimation()
    }
    
    func playBckgrndAnimation() {
        
        self.image = UIImage(named: "galaga1.pn")
        self.animationImages = nil
        
        var imgArray = [UIImage]()
        
        for x in 1...10 {
            let img = UIImage(named: "galaga\(x).png")
            imgArray.append(img!)

        }
        
        self.animationImages = imgArray
        self.animationDuration = 0.8
        self.animationRepeatCount = 0
        self.startAnimating()
    }
    
    
}

