//
//  IncomeModel.swift
//  SmartAgency
//
//  Created by Jerod on 2018/4/13.
//  Copyright © 2018年 Sabuy. All rights reserved.
//

import UIKit

/**
 * model 数据层逻辑
 */
class IncomeModel: NSObject {
    var allIncome : Int!
    var daysIncomeArray : NSArray!
    
    class func getData() -> IncomeModel {
        let m = IncomeModel()
        m.allIncome = 5678
        m.daysIncomeArray = [DaysIncomeModel(),DaysIncomeModel(),DaysIncomeModel(),DaysIncomeModel(),DaysIncomeModel()]
        return m
    }
}


class DaysIncomeModel: NSObject {
    var income : Int = 123
}
