//
//  NaviTitleView.swift
//  SmartAgency
//
//  Created by Jerod on 2018/2/19.
//  Copyright © 2018年 SaBai. All rights reserved.
//

import UIKit

class NaviTitleView: UIView {

    var titleLabel = UILabel()
    var englishLabel = UILabel()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        titleLabel.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: 44-17)
        englishLabel.frame = CGRect(x: 0, y: 44-17, width: frame.size.width, height: 17)
        titleLabel.font = UIFont.systemFont(ofSize: 15)
        englishLabel.font = UIFont.systemFont(ofSize: 15)
        titleLabel.textAlignment = .center
        englishLabel.textAlignment = NSTextAlignment.center
        titleLabel.textColor = UIColor.white
        englishLabel.textColor = UIColor.white
        
        self.addSubview(titleLabel)
        self.addSubview(englishLabel)
    }
    
    open func setupTitle(title:String) {
        //titleLabel.backgroundColor = UIColor.yellow
        titleLabel.text = title
    }
    
    open func setupEnglish(english:String) {
        //englishLabel.backgroundColor = UIColor.green
        englishLabel.text = english
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
