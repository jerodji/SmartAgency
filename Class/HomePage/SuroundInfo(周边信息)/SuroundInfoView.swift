//
//  SuroundInfoView.swift
//  SmartAgency
//
//  Created by Jerod on 2018/2/20.
//  Copyright © 2018年 SaBai. All rights reserved.
//

import UIKit

let SuroundInfoDistance = CGFloat(15.0)
let SuroundInfoSizeScale = CGFloat((ScreenW-30.0)/345.0)

class SuroundInfoView: UIView,LoadXIB {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configSubviews()
    }
    
    func configSubviews() -> () {
        self.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize.init(width: 0, height: 1)
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
