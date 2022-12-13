//
//  ChartsView.swift
//  Workout
//
//  Created by Ildar Garifullin on 13/12/2022.
//

import UIKit

extension ChartsView {
    struct Data {
        let value: Int
        let title: String
    }
}

final class ChartsView: BaseView {
    
    func configure(with data: [ChartsView.Data]) {
    }
}

extension ChartsView {
    override func setupViews() {
        super.setupViews()
        
//        setupView(stackView)
    }
    
    override func constraintsViews() {
        super.constraintsViews()
      
        NSLayoutConstraint.activate([
//            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            stackView.topAnchor.constraint(equalTo: topAnchor),
//            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}
