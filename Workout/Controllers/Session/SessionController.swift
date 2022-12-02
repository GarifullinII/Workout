//
//  SessionController.swift
//  Workout
//
//  Created by Ildar Garifullin on 16/11/2022.
//

import UIKit

class SessionController: BaseController {
    private let timerView = TimerView()
    
    private let timerDuration = 3.0
    
    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped {
            timerView.startTimer {
                DispatchQueue.main.asyncAfter(
                    deadline: .now() + 1) {
                        self.navBarRightButtonHandler()
                    }
            }
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRuning ? .isStopped : .isRuning
        addNavBarButton(
            at: .left,
            with: timerView.state == .isRuning
            ? Resources.Strings.Session.navBarPause
            : Resources.Strings.Session.navBarStart
        )
        
    }
    
    override func navBarRightButtonHandler() {
        timerView.stopTimer()
        timerView.state = .isStopped
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarStart)
    }
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
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        self.title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: Resources.Strings.Session.navBarStart)
        addNavBarButton(at: .right, with: Resources.Strings.Session.navBarFinish)
        
        timerView.configure(with: timerDuration, progress: 0)
        
        timerView.callBack = {
            DispatchQueue.main.asyncAfter(
                deadline: .now() + 1) {
                    self.navBarRightButtonHandler()
                }
        }
    }
}
