//
//  OverviewNavBar.swift
//  Workout
//
//  Created by Ildar Garifullin on 18/11/2022.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()
}

extension OverviewNavBar {
    override func addView() {
        super.addView()
        
        addSubview(titleLabel)
        addSubview(allWorkoutsButton)
        addSubview(addButton)
    }
    override func layoutViews() {
        super.layoutViews()
    }
    override func configure() {
        super.configure()
        
        backgroundColor = .white
        addBottomBorder(with: Resources.Colors.separator, height: 1)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = Resources.Strings.NavBar.overview
        titleLabel.textColor = Resources.Colors.titleGray
        titleLabel.font = Resources.Fonts.helvelticaRegular(with: 22)
        
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTilte(Resources.Strings.Overview.allWorcoutsButton)
        allWorkoutsButton.addTarget(
            self,
            action: #selector(allWorkoutsButtonAction),
            for: .touchUpInside)
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setImage(Resources.Images.Common.add, for: .normal)
        addButton.addTarget(
            self,
            action: #selector(addButtonAction),
            for: .touchUpInside)
    }
}

@objc extension OverviewNavBar {
    
    func allWorkoutsButtonAction() {
        print("All Workouts Button tapped")
    }
    
    func addButtonAction() {
        print("Add Button tapped")
    }
}
