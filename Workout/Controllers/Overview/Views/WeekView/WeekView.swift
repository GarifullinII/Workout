//
//  WeekView.swift
//  Workout
//
//  Created by Ildar Garifullin on 22/11/2022.
//

import UIKit

final class WeekView: BaseView {
    
    private let calendar = Calendar.current
    
    private var stackView = UIStackView()
}

extension WeekView {
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
    }
    
    override func constraintsViews() {
        super.constraintsViews()
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        
        var weekdays = Date.calendar.shortStandaloneWeekdaySymbols
        
        if Date.calendar.firstWeekday == 2 {
            let sun = weekdays.remove(at: 0)
            weekdays.append(sun)
        }
        
        weekdays.enumerated().forEach { index, name in
            let view = WeekDayView()
            view.configure(with: index, and: name)
            stackView.addArrangedSubview(view)
        }
    }
}
