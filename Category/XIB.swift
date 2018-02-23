//
//  XIB.swift
//  SmartAgency
//
//  Created by Jerod on 2018/2/20.
//  Copyright © 2018年 SaBai. All rights reserved.
//

import UIKit

protocol LoadXIB {
    
}

extension LoadXIB where Self : UIView {
//    static func loadViewFromXIB(_ nibName:String? = nil) -> (Self) {
//        let loadName = nibName == nil ? "\(self)" : nibName!
//        return Bundle.main.loadNibNamed(loadName, owner: nil, options: nil)?.first as! Self
//    }
    
    static func loadFromXIB(_ nibName:String? = nil) -> Self {
        return Bundle.main.loadNibNamed(nibName ?? "\(self)", owner: nil, options: nil)?.first as! Self
    }
}


