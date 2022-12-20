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
    
    private let yAxisView = YAxisView()
    private let xAxisView = XAxisView()
    
    private let chartView = ChartView()
    
    func configure(with data: [ChartsView.Data]) {
        yAxisView.configure(with: data)
        xAxisView.configure(with: data)
        
        chartView.configure(with: data)
    }
}

extension ChartsView {
    override func setupViews() {
        super.setupViews()
        
        setupView(xAxisView)
        setupView(yAxisView)
        setupView(chartView)
    }
    
    override func constraintsViews() {
        super.constraintsViews()
      
        NSLayoutConstraint.activate([
            yAxisView.leadingAnchor.constraint(equalTo: leadingAnchor),
            yAxisView.topAnchor.constraint(equalTo: topAnchor),
            yAxisView.bottomAnchor.constraint(equalTo: xAxisView.topAnchor, constant: -12),
            
            xAxisView.leadingAnchor.constraint(equalTo: yAxisView.trailingAnchor, constant: 12),
            xAxisView.bottomAnchor.constraint(equalTo: bottomAnchor),
            xAxisView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            chartView.leadingAnchor.constraint(equalTo: yAxisView.trailingAnchor, constant: 12),
            chartView.topAnchor.constraint(equalTo: topAnchor),
            chartView.trailingAnchor.constraint(equalTo: trailingAnchor),
            chartView.bottomAnchor.constraint(equalTo: xAxisView.topAnchor, constant: -12)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}
