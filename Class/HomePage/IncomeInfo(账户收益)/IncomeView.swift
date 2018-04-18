//
//  IncomeInfoView.swift
//  SmartAgency
//
//  Created by Jerod on 2018/2/20.
//  Copyright © 2018年 SaBai. All rights reserved.
//

import UIKit

let IncomeInfoDistance  = CGFloat(15.0) /* 左右边距 */
let IncomeInfoSizeScale = CGFloat((ScreenW-30.0)/345.0) /* 尺寸比例 */

/**
 * view 视图逻辑
 */
class IncomeView: UIView,LoadXIBView,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var VM : IncomeVM?
    
    /** 总收益 */
    @IBOutlet weak var incomeLab: UILabel!
    /** 每天的收益 */
    @IBOutlet weak var detailsColecView: UICollectionView!
    
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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        detailsColecView.delegate = self
        detailsColecView.dataSource = self
        detailsColecView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellid")
        
        VM = IncomeVM.init()
        incomeLab.text = VM!.allIncome
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return VM?.detailsList.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.navigationController().pushViewController(MyInfoVC(), animated: true)
    }
}
