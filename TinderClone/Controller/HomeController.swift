//
//  HomeController.swift
//  TinderClone
//
//  Created by mac on 2020/07/11.
//  Copyright © 2020 48kian. All rights reserved.
//

import UIKit

class HomeController: UIViewController{
    
    private let topStackView = HomeNavigationStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .black
        view.addSubview(topStackView)
        
        topStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor)
    }
}
