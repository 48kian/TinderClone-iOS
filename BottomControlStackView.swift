//
//  BottomControlStackView.swift
//  TinderClone
//
//  Created by MacRyzen on 2020/07/15.
//  Copyright © 2020 48kian. All rights reserved.
//

import UIKit

class BottomControlStackView: UIStackView {
    
    let refreshButton = UIButton(type: .system)
    let cancelButton = UIButton(type: .system)
    let starButton = UIButton(type: .system)
    let heartButton = UIButton(type: .system)
    let thunderButton = UIButton(type: .system)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        refreshButton.setImage(#imageLiteral(resourceName: "refresh_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        cancelButton.setImage(#imageLiteral(resourceName: "dismiss_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        starButton.setImage(#imageLiteral(resourceName: "super_like_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        heartButton.setImage(#imageLiteral(resourceName: "like_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        thunderButton.setImage(#imageLiteral(resourceName: "boost_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        
        
        [refreshButton, cancelButton, starButton, heartButton, thunderButton].forEach { view in
            addArrangedSubview(view)
        }
        
        distribution = .equalSpacing
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
