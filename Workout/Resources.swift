//
//  Resources.swift
//  Workout
//
//  Created by Ildar Garifullin on 14/11/2022.
//

import UIKit

enum Resources {
    
    // colors active and inactive TabBar
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inactive = UIColor(hexString: "#929DA5")
        
        // color background NavBar
        static let background = UIColor(hexString: "#F8F9F9")
        
        // color for border TabBar
        static let separator = UIColor(hexString: "#E8ECEF")
        
        // color for text NavBar
        static let titleGray = UIColor(hexString: "#545C77")
    }
    
    enum Strings {
        
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
    }
    
    enum Images {
        static let overview = UIImage(named: "overview")
        static let session = UIImage(named: "session")
        static let progress = UIImage(named: "progress")
        static let settings = UIImage(named: "settings")
    }
    
    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
