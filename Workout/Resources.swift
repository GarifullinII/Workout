//
//  Resources.swift
//  Workout
//
//  Created by Ildar Garifullin on 14/11/2022.
//

import UIKit

enum Resources {
    
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inactive = UIColor(hexString: "#929DA5")
        
        static let separator = UIColor(hexString: "#E8ECEF")
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
}
