//
//  WeekDayView.swift
//  Workout
//
//  Created by Ildar Garifullin on 22/11/2022.
//

import UIKit

extension WeekView {
    final class WeekDayView: BaseView {
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
    }
}

extension WeekView.WeekDayView {
    override func addView() {
        super.addView()
        
        addView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    override func configureView() {
        super.configureView()
        
        backgroundColor = .red
        
        stackView.spacing = 3
        stackView.axis = .vertical
    }
}
