//
//  SessionController.swift
//  Workout
//
//  Created by Ildar Garifullin on 16/11/2022.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRight)
    }
    
    override func navBarLeftButtonHandler() {
        print("Session NavBar left button tapped")
    }
    
    override func navBarRightButtonHandler() {
        print("Session NavBar right button tapped")
    }
}
