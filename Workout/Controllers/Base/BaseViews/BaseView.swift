//
//  BaseView.swift
//  Workout
//
//  Created by Ildar Garifullin on 18/11/2022.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintsViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupViews()
        constraintsViews()
        configureAppearance()
    }
}

@objc extension BaseView {
    func setupViews() {}
    func constraintsViews() {}
    func configureAppearance() {
        backgroundColor = .white
    }
}
