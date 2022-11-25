//
//  SessionController.swift
//  Workout
//
//  Created by Ildar Garifullin on 16/11/2022.
//

import UIKit

class SessionController: BaseController {
    private let timerView: TimerView = {
        let view = TimerView()

        return view
    }()
}

extension SessionController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(timerView)
    }
    
    override func constraintsViews() {
        super.constraintsViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
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
