//
//  HeadTopView.swift
//  SmartAgency
//
//  Created by hailin on 2018/2/13.
//  Copyright © 2018年 SaBai. All rights reserved.
//

import UIKit

class HeadTopView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configSubviews();
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configSubviews();
    }
    
    func configSubviews() -> () {
        self.backgroundColor = UIColor.init(red: 56.0/255.0, green: 56.0/255.0, blue: 56.0/255.0, alpha: 1)
    }
    

    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
