//
//  Resources.swift
//  Workout
//
//  Created by Ildar Garifullin on 14/11/2022.
//

import UIKit

enum Resources {
    
    enum Colors {
        
        // colors active and inactive TabBar
        static let active = UIColor(hexString: "#437BFE")
        static let inactive = UIColor(hexString: "#929DA5")
        
        // color background NavBar
        static let background = UIColor(hexString: "#F8F9F9")
        // color for border TabBar
        static let separator = UIColor(hexString: "#E8ECEF")
        // color for buttom "All Workouts"
        static let secondary = UIColor(hexString: "#F0F3FF")
        
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
        
        enum NavBar {
            static let overview = "Today"
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
            static let settings = "Settings"
        }
        
        enum Overview {
            static let allWorcoutsButton = "All Workouts"
        }
        
        enum Session {
            static let navBarLeft = "Pause"
            static let navBarRight = "Finish"
        }
        
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
        }
        
        enum Settings {}
    }
    
    enum Images {
        
        enum TabBar {
            static let overview = UIImage(named: "overview")
            static let session = UIImage(named: "session")
            static let progress = UIImage(named: "progress")
            static let settings = UIImage(named: "settings")
        }
        
        enum Common {
            static let downArrow = UIImage(named: "down_arrow")
            static let add = UIImage(named: "add_button")
        }
    }
    
    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
