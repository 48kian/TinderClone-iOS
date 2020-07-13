//
//  HomeNavigationStackView.swift
//  TinderClone
//
//  Created by MacRyzen on 2020/07/13.
//  Copyright © 2020 48kian. All rights reserved.
//

import UIKit

class HomeNavigationStackView: UIStackView{
    //MARK - Properties
    
    //type.system 뭐지
    let settingButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    //imageView랑 그냥 image차이뭐지
    let tinderIconImage = UIImageView(image: #imageLiteral(resourceName: "app_icon"))
    
    //MARK - LifeCycle
    
    //init뭐였더라
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //for 부분에 뭐오는거지
        settingButton.setImage(#imageLiteral(resourceName: "top_left_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(#imageLiteral(resourceName: "top_messages_icon").withRenderingMode(.alwaysOriginal), for: .normal)
        
        
        //간격 맞추기 위해서 일부러 UIView()넣어줌
        //forEach 뭐지.
        //view라는 것이 원래 정해진건가??? 화면으로???
        [settingButton, UIView(), tinderIconImage, UIView(), messageButton].forEach { view in
            addArrangedSubview(view)
        }
        
        //여기 부분도 뭔지 확인
        distribution = .equalSpacing
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
