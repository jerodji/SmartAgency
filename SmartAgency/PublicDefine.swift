//
//  PublicDefine.swift
//  SmartAgency
//
//  Created by Jerod on 2018/2/12.
//  Copyright © 2018年 SaBai. All rights reserved.
//

/**======================  屏幕尺寸  ======================**/

let ScreenW = UIScreen.main.bounds.width  /* 屏幕宽度 */
let ScreenH = UIScreen.main.bounds.height /* 屏幕高度 */
let SizeScale = ScreenW/375.0 /* 以375屏幕宽度为准的尺寸比例 */

let StatusH  = UIApplication.shared.statusBarFrame.height /* 20 : 44 */
let NaviH    = CGFloat(StatusH + 44.0)
let HomebarH = CGFloat((StatusH==20.0) ? 0.0 : 34.0) /* 0 : 34 */
let TabbarH  = CGFloat(49.0 + HomebarH)
let kNavH    = CGFloat(44.0)
let kTabH    = CGFloat(49.0)


/**======================  DEBUG  =======================**/

func delog(_ msg:Any,file:String = #file,funcName:String = #function,lineNum:Int = #line){
    #if DEBUG
        let fileName:String = (file as NSString).lastPathComponent
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss:SSS"
        let datestr:String = formatter.string(from: Date())
        print("\(datestr) \(fileName)[\(lineNum)] \(funcName)" + ":",msg)
    #endif
}

/**======================  Color  =======================**/
//var UIColorRGBA(r,g,b,a) = UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)

/**======================    =======================**/



import UIKit

class PublicDefine: NSObject {
    
}
