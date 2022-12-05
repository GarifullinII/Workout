//
//  StatsView.swift
//  Workout
//
//  Created by Ildar Garifullin on 05/12/2022.
//

import UIKit

final class StatsView: BaseInfoView {
    private let itemView = StatsItemView()
    
    override func setupViews() {
        super.setupViews()
        
        setupView(itemView)
        itemView.configure(with: StatsItemView.StatsItem(
            image: Resources.Images.Session.Stats.heartRate,
            value: "155 bpm",
            title: Resources.Strings.Session.heartRate.uppercased()
        ))
        
        NSLayoutConstraint.activate([
            itemView.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            itemView.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  15)
        ])
    }
}
