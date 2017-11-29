//
//  numtowordsconvert.swift
//  Font-Clock-2
//
//  Created by Jacob Fox on 2017-11-06.
//  Copyright © 2017 Jacob Fox. All rights reserved.
//
/*
import Foundation


func toWords<N>(number: N) -> String? {
    let formatter = NumberFormatter()
    formatter.numberStyle = .spellOut
    
    switch number {
    case is Int, is UInt, is Float, is Double:
        return formatter.string(from: number as! NSNumber)
    case is String:
        if let number = Double(number as! String) {
            return formatter.string(from: NSNumber(floatLiteral: number))
        }
    default:
        break
    }
    return nil
}

print(toWords(number: 12312))

print(toWords(number: "12312"))

*/
