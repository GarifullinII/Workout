//
//  StepsView.swift
//  Workout
//
//  Created by Ildar Garifullin on 07/12/2022.
//

import UIKit

final class StepsView: BaseInfoView {
    private let barsView = BarsView()

    func configure(with items: [BarView.Data]) {
        barsView.configure(with: items)
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
            barsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            barsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            barsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            barsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}
