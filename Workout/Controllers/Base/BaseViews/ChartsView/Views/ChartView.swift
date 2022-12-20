//
//  ChartView.swift
//  Workout
//
//  Created by Ildar Garifullin on 20/12/2022.
//

import UIKit

final class ChartView: BaseView {
    
    private let xAxisSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = Resources.Colors.separator
        
        return view
    }()
    
    private let yAxisSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = Resources.Colors.separator
        
        return view
    }()
    
    func configure(with data: [ChartsView.Data]) {
    }
}

extension ChartView {
    override func setupViews() {
        super.setupViews()
        
        setupView(xAxisSeparator)
        setupView(yAxisSeparator)
    }
    
    override func constraintsViews() {
        super.constraintsViews()
      
        NSLayoutConstraint.activate([
            xAxisSeparator.leadingAnchor.constraint(equalTo: leadingAnchor),
            xAxisSeparator.trailingAnchor.constraint(equalTo: trailingAnchor),
            xAxisSeparator.bottomAnchor.constraint(equalTo: bottomAnchor),
            xAxisSeparator.heightAnchor.constraint(equalToConstant: 1),
            
            yAxisSeparator.leadingAnchor.constraint(equalTo: leadingAnchor),
            yAxisSeparator.topAnchor.constraint(equalTo: topAnchor),
            yAxisSeparator.bottomAnchor.constraint(equalTo: bottomAnchor),
            yAxisSeparator.widthAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}
