//
//  UIColor+extensions.swift
//  Workout
//
//  Created by Ildar Garifullin on 14/11/2022.
//

import UIKit

extension UIColor {
    
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let acol, rcol, gcol, bcol: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (acol, rcol, gcol, bcol) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (acol, rcol, gcol, bcol) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (acol, rcol, gcol, bcol) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (acol, rcol, gcol, bcol) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(rcol) / 255,
                  green: CGFloat(gcol) / 255,
                  blue: CGFloat(bcol) / 255,
                  alpha: CGFloat(acol) / 255)
    }
}
