//
//  BarsView.swift
//  Workout
//
//  Created by Ildar Garifullin on 07/12/2022.
//

import UIKit

final class BarsView: BaseView {
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .equalSpacing
        return view
    }()
}
