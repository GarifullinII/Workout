//
//  MonthlyPerformanceView.swift
//  Workout
//
//  Created by Ildar Garifullin on 13/12/2022.
//

import UIKit

final class MonthlyPerformanceView: BaseInfoView {
    private let chartsView = ChartsView()

    func configure(with items: [ChartsView.Data]) {
        chartsView.configure(with: items)
    }
}

extension MonthlyPerformanceView {
    override func setupViews() {
        super.setupViews()
        
        setupView(chartsView)
    }
    
    override func constraintsViews() {
        super.constraintsViews()
        
        NSLayoutConstraint.activate([
            chartsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            chartsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            chartsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            chartsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}
