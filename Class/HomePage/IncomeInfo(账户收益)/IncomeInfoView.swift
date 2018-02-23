//
//  IncomeInfoView.swift
//  SmartAgency
//
//  Created by Jerod on 2018/2/20.
//  Copyright © 2018年 SaBai. All rights reserved.
//

import UIKit

let IncomeInfoDistance = CGFloat(15.0) /* 左右边距 */
let IncomeInfoSizeScale = CGFloat((ScreenW-30.0)/345.0) /* 尺寸比例 */

class IncomeInfoView: UIView,LoadXIB {
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
        
//        self.backgroundColor = UIColor.blue
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.navigationController().pushViewController(MyInfoVC(), animated: true)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
