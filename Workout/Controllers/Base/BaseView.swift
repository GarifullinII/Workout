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
        
        addView()
        layoutViews()
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    func addView() {}
    func layoutViews() {}
    func configureView() {}
}
