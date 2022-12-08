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
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .settings: return "Settings"
                }
            }
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
            static let navBarStart = "Start"
            static let navBarPause = "Pause"
            static let navBarFinish = "Finish"
            
            static let elapsedTime = "Elapsed Time"
            static let remainingTime = "Remaining Time"
            static let completed = "Completed"
            static let remaining = "Remaining"
            
            static let workoutStats = "Workout stats"
            static let averagePace = "Average pace"
            static let heartRate = "Heart rate"
            static let totalDistance = "Total distance"
            static let totalSteps = "Total steps"
            
            static let stepsCounter = "Steps Counter"
        }
        
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
            
            static let dailyPerformance = "Daily performance"
            static let lastSevenDays = "Last 7 days"
        }
        
        enum Settings {}
    }
    
    enum Images {
        
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(named: "overview")
                case .session: return UIImage(named: "session")
                case .progress: return UIImage(named: "progress")
                case .settings: return UIImage(named: "settings")
                }
            }
        }
        
        enum Common {
            static let downArrow = UIImage(named: "down_arrow")
            static let add = UIImage(named: "add_button")
        }
        
        enum Session {
                    enum Stats {
                        static let averagePace = UIImage(named: "speed")
                        static let heartRate = UIImage(named: "heart")
                        static let totalDistance = UIImage(named: "maps")
                        static let totalSteps = UIImage(named: "steps")
                    }
                }
    }
    
    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
