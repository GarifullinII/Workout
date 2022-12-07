//
//  StepsView.swift
//  Workout
//
//  Created by Ildar Garifullin on 07/12/2022.
//

import UIKit

final class StepsView: BaseInfoView {
    private let barsView = UIView()

    func configure(with items: [StatsItem]) {
        barsView.backgroundColor = .red
    }
}

extension StepsView {
    override func setupViews() {
        super.setupViews()
        
        setupView(barsView)
    }
    
    override func constraintsViews() {
        super.constraintsViews()
        
        NSLayoutConstraint.activate([
            barsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            barsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            barsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            barsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}
