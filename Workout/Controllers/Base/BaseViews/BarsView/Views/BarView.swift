//
//  BarView.swift
//  Workout
//
//  Created by Ildar Garifullin on 07/12/2022.
//

import UIKit

extension BarView {
    struct Data {
        let value: String
        let heightMultiplier: Double
        let title: String
    }
}

final class BarView: BaseView {
    
    private let heightMultiplier: Double

    private let valueLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Fonts.helvelticaRegular(with: 13)
        label.textColor = Resources.Colors.active
        
        return label
    }()
    
    private let barView: UIView = {
        let view = UIView()
        view.backgroundColor = Resources.Colors.active
        view.layer.cornerRadius = 2.5
        
        return view
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Resources.Fonts.helvelticaRegular(with: 9)
        label.textColor = Resources.Colors.inactive
        
        return label
    }()
    
    init(data: Data) {
        self.heightMultiplier = data.heightMultiplier
        super.init(frame: .zero)
        
        valueLabel.text = data.value
        titleLabel.text = data.title.uppercased()
    }
    
    required init?(coder: NSCoder) {
        self.heightMultiplier = 0
        super.init(frame: .zero)
    }
}

extension BarView {
    override func setupViews() {
        super.setupViews()
        
        setupView(valueLabel)
        setupView(barView)
        setupView(titleLabel)
    }
    
    override func constraintsViews() {
        super.constraintsViews()
      
        NSLayoutConstraint.activate([
            valueLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            valueLabel.heightAnchor.constraint(equalToConstant: 10),
            
            barView.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 7),
            barView.centerXAnchor.constraint(equalTo: centerXAnchor),
            barView.widthAnchor.constraint(equalToConstant: 17),
            barView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: heightMultiplier * 0.8),
            
            titleLabel.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 10)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}
