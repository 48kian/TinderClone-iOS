//
//  CardView.swift
//  TinderClone
//
//  Created by MacRyzen on 2020/07/16.
//  Copyright © 2020 48kian. All rights reserved.
//

import UIKit

class CardView: UIView {
    
    // MARK: - Properties
    private let imageView: UIImageView = {
       
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "lady4c")
        return iv
    }()
    
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .green
        layer.cornerRadius = 10
        clipsToBounds = true
        self.addSubview(imageView)
        imageView.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
