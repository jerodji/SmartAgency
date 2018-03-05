//
//  RootVC.swift
//  SmartAgency
//
//  Created by hailin on 2018/2/12.
//  Copyright © 2018年 SaBai. All rights reserved.
//

import UIKit

class RootVC: UIViewController {

    var userIcon = UIImage()
    var homeTitle = ""
    var homeEnglishTitle = ""
    
    override func loadView() {
        super.loadView()
        
        userIcon = UIImage(named: "Icon-60")!
        homeTitle = "这里是标题"
        homeEnglishTitle = "English Title"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        /* 状态栏字体颜色 */
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent;
        /* 导航栏 设置透明 */
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default);
        self.navigationController?.navigationBar.shadowImage = UIImage();
        
        configItems()
        configSubviews()
    }
    
    func configItems() -> () {
        /* item1 头像按钮 */
        let btn = UIButton.init(frame: CGRect(x: 0, y: 0, width: kNavH, height: kNavH));
        btn.addTarget(self, action: #selector(btnAction), for: UIControlEvents.touchUpInside);
        btn.backgroundColor = UIColor.red;
        let item1 = UIBarButtonItem.init(customView: btn)
        self.navigationItem.leftBarButtonItem = item1 //[item0,item1]
        /* title */
        let titleView = NaviTitleView.init(frame: CGRect(x: 0, y: 0, width: ScreenW-2*80, height: 44))
        titleView.setupTitle(title: homeTitle)
        titleView.setupEnglish(english: homeEnglishTitle)
        self.navigationItem.titleView = titleView
    }
    
    @objc func btnAction() -> () {
        self.navigationController?.pushViewController(MyInfoVC(), animated: true);
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let statusBackview = UIView(frame: CGRect(x: 0, y: 0, width: ScreenW, height: StatusH))
        statusBackview.backgroundColor = UIColor.clear
        self.navigationController?.view.addSubview(statusBackview)
        
        self.navigationController?.navigationBar.backgroundColor = UIColor.clear
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        let statusBackview = UIView(frame: CGRect(x: 0, y: 0, width: ScreenW, height: StatusH))
        statusBackview.backgroundColor = UIColor(red: 56.0/255.0, green: 56.0/255.0, blue: 56.0/255.0, alpha: 1)
        self.navigationController?.view.addSubview(statusBackview)
        
        self.navigationController?.navigationBar.backgroundColor = UIColor(red: 56.0/255.0, green: 56.0/255.0, blue: 56.0/255.0, alpha: 1)
    }
    
    func configSubviews() -> () {
        /* 顶部背景 */
        let headView = HeadTopView.init(frame: CGRect(x: 0, y: 0, width: ScreenW, height: 148.0*SizeScale))
        self.view.addSubview(headView)
        
        let incomeView = IncomeInfoView.loadFromXIB()
        incomeView.frame = CGRect(x: IncomeInfoDistance, y: 75, width: ScreenW-2*IncomeInfoDistance, height: 300*IncomeInfoSizeScale)
        self.view.addSubview(incomeView)
        
        let financeView = FinanceView.loadFromXIB()
        financeView.frame = CGRect.init(x: FinanceDistance, y: incomeView.bottom+10, width: ScreenW-2*FinanceDistance, height: 85*FinanceSizeScale)
        self.view.addSubview(financeView)
        
        let suroundView = SuroundInfoView.loadFromXIB()
        suroundView.frame = CGRect.init(x: SuroundInfoDistance, y: financeView.bottom+10, width: ScreenW-2*SuroundInfoDistance, height: 85*SuroundInfoSizeScale)
        self.view.addSubview(suroundView)
        
        let remindView = ReminderView.loadFromXIB()
        remindView.frame = CGRect(x: (ScreenW-320.0)/2.0, y: (ScreenH-TabbarH), width: 320, height: 25)
        self.view.addSubview(remindView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
