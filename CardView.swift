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
    private let gradientLayer = CAGradientLayer()
    
    private let imageView: UIImageView = {
       
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = #imageLiteral(resourceName: "lady4c")
        return iv
    }()
    
    private let infoLabel: UILabel = {
       
        let label = UILabel()
        label.numberOfLines = 2
        
        let attributedText = NSMutableAttributedString(string: "Jane Doe", attributes: [.font : UIFont.systemFont(ofSize: 32, weight: .heavy), .foregroundColor: UIColor.white])
        
        attributedText.append(NSMutableAttributedString(string: "  20", attributes: [.font : UIFont.systemFont(ofSize: 24), .foregroundColor: UIColor.white]))
        
        label.attributedText = attributedText
        return label
    }()
    
    private lazy var infoButton: UIButton = {
        let infoButton = UIButton()
        infoButton.setImage(#imageLiteral(resourceName: "info_icon").withRenderingMode(.alwaysOriginal), for: .normal)
        return infoButton
    }()
    
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .green
        layer.cornerRadius = 10
        clipsToBounds = true
        
        addSubview(imageView)
        imageView.fillSuperview()
        
        //그라데이션을 여기서 설정해주는 이유는 서브뷰들이 스택처럼 쌓이는데 그라데이션이 가장 아래에 있어야지 원하는대로 나옴
        //그렇지 않으면 그라데이션이 레이블 위에 있음.
        configureGradientLayer()
        
        addSubview(infoLabel)
        infoLabel.anchor(left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingLeft
            : 16, paddingBottom: 16, paddingRight: 16)
        
        addSubview(infoButton)
        infoButton.setDimensions(height: 40, width: 40)
        infoButton.centerY(inView: infoLabel)
        infoButton.anchor(right: rightAnchor, paddingRight: 16)
    }
    
    //여기가 뷰들이 일단 생성되고 서브뷰 생성될때.
    override func layoutSubviews() {
        gradientLayer.frame = self.frame
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Helper
    
    func configureGradientLayer() {
        
        //그라데이션 시작컬러와 끝컬러
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        //그라데이션 위치
        gradientLayer.locations = [0.5, 1.1]
        layer.addSublayer(gradientLayer)
    }

}
