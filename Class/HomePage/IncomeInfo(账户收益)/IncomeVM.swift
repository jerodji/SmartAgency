//
//  IncomeVM.swift
//  SmartAgency
//
//  Created by Jerod on 2018/4/13.
//  Copyright © 2018年 Sabuy. All rights reserved.
//

import UIKit


class IncomeVM: NSObject {
    
    private var model:IncomeModel?
    var allIncome : String!
    var detailsList:NSArray = []
    
    override init() {
        super.init()
        
        //model
        model = IncomeModel.getData()
        allIncome = "\(model?.allIncome ?? 000)"
        detailsList = model?.daysIncomeArray ?? []
    }
    
    
    
}
