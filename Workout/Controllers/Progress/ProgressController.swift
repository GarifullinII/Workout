//
//  ProgressController.swift
//  Workout
//
//  Created by Ildar Garifullin on 16/11/2022.
//

import UIKit

class ProgressController: BaseController {

    private let dailyPerformanceView = DailyPerformanceView(
        with: Resources.Strings.Progress.dailyPerformance,
        buttonTitle: Resources.Strings.Progress.lastSevenDays)
    
    private let monthlyPerformanceView = MonthlyPerformanceView(
        with: Resources.Strings.Progress.monthlyPerformance,
        buttonTitle: Resources.Strings.Progress.lastTenMonths)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ProgressController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(dailyPerformanceView)
        view.setupView(monthlyPerformanceView)
    }
    
    override func constraintsViews() {
        super.constraintsViews()
        
        NSLayoutConstraint.activate([
            dailyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformanceView.heightAnchor.constraint(equalTo: dailyPerformanceView.widthAnchor, multiplier: 0.68),
            
            monthlyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            monthlyPerformanceView.topAnchor.constraint(equalTo: dailyPerformanceView.bottomAnchor, constant: 15),
            monthlyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            monthlyPerformanceView.heightAnchor.constraint(
                equalTo: monthlyPerformanceView.widthAnchor,
                multiplier: 1.06)
            ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        title = Resources.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: Resources.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Progress.navBarRight)
        
        dailyPerformanceView.configure(with: [
            .init(value: "1", heightMultiplier: 0.25, title: "Mon"),
            .init(value: "2", heightMultiplier: 0.4, title: "Tue"),
            .init(value: "3", heightMultiplier: 0.6, title: "Wen"),
            .init(value: "4", heightMultiplier: 0.8, title: "Thu"),
            .init(value: "5", heightMultiplier: 1, title: "Fri"),
            .init(value: "3", heightMultiplier: 0.6, title: "Sat"),
            .init(value: "2", heightMultiplier: 0.4, title: "Sun")
        ])
    }
}
