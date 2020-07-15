//
//  HomeController.swift
//  TinderClone
//
//  Created by mac on 2020/07/11.
//  Copyright © 2020 48kian. All rights reserved.
//

import UIKit

class HomeController: UIViewController{
    
    //깔끔하게 하려고 HomeNavigationStackView를 따로 만들어 주었음.
    private let topStackView = HomeNavigationStackView()
    private let bottomStackView = BottomControlStackView()
    private let deckView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.layer.cornerRadius = 5
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .black
        let stackView = UIStackView(arrangedSubviews: [topStackView, deckView, bottomStackView])
        stackView.axis = .vertical
        view.addSubview(stackView)
        
        stackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor)
        
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = .init(top: 0, left: 12, bottom: 0, right: 12)
    }
}
