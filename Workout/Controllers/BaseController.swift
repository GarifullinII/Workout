//
//  BaseController.swift
//  Workout
//
//  Created by Ildar Garifullin on 15/11/2022.
//

import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
}

@objc extension BaseController {
    
    func addViews() {}
    
    func layoutViews() {}
    
    func configure() {
        view.backgroundColor = Resources.Colors.background
    }
}
