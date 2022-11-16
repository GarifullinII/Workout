//
//  ProgressController.swift
//  Workout
//
//  Created by Ildar Garifullin on 16/11/2022.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.title = "Workout Progress"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.progress
        
        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Details")
    }
}