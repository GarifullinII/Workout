//
//  SecondaryButton.swift
//  Workout
//
//  Created by Ildar Garifullin on 17/11/2022.
//

import UIKit

public enum MainButtonType {
    case primary
    case secondary
}

final class MainButton: UIButton {
    
    private var type: MainButtonType = .primary
    
    private let lable: UILabel = {
        let lable = UILabel()
        lable.textAlignment = .center
        
        return lable
    }()
    
    private let iconView: UIImageView = {
        let view = UIImageView()
        view.image = Resources.Images.Common.downArrow
        
        return view
    }()
    
    init(with type: MainButtonType) {
        super.init(frame: .zero)
        self.type = type
        
        setupViews()
        constraintsViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        setupViews()
        constraintsViews()
        configureAppearance()
    }
    
    func setTilte(_ title: String?) {
        lable.text = title
    }
}

private extension MainButton {
    
    func setupViews() {
        setupView(lable)
        setupView(iconView)
    }
    
    func constraintsViews() {
        var horisontalOffset: CGFloat {
            switch type {
            case .primary: return 0
            case .secondary: return 10
            }
        }
        
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horisontalOffset),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            lable.centerYAnchor.constraint(equalTo: centerYAnchor),
            lable.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            lable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horisontalOffset * 2)
            
        ])
    }
    
    func configureAppearance() {
        switch type {
        case .secondary:
            backgroundColor = Resources.Colors.secondary
            layer.cornerRadius = 14
            lable.textColor = Resources.Colors.active
            iconView.tintColor = Resources.Colors.active
            lable.font = Resources.Fonts.helvelticaRegular(with: 15)
        case .primary:
            lable.textColor = Resources.Colors.inactive
            lable.font = Resources.Fonts.helvelticaRegular(with: 13)
            iconView.tintColor = Resources.Colors.inactive
        }
        
        makesystem(self)
    }
}
