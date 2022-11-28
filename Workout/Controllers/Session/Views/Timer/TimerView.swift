//
//  TimerView.swift
//  Workout
//
//  Created by Ildar Garifullin on 25/11/2022.
//

import UIKit

final class TimerView: BaseInfoView {
    
    private var progressView: ProgressView = {
        let view = ProgressView()
        view.drawProgress(with: 1.0)
        return view
    }()
}

extension TimerView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(progressView)
    }
    
    override func constraintsViews() {
        super.constraintsViews()
        
        NSLayoutConstraint.activate([
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}
