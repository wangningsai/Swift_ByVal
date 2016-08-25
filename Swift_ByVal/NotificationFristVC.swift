//
//  NotificationFristVC.swift
//  Swift_ByVal
//
//  Created by ym on 16/8/23.
//  Copyright © 2016年 王宁. All rights reserved.
//

import UIKit

class NotificationFristVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "页面一"
        self.view.backgroundColor = UIColor.grayColor()
//    创建跳转按钮
        let clickBtn = UIButton(frame:CGRectMake(80, 250, 60, 40))
        clickBtn.backgroundColor = UIColor.greenColor()
        clickBtn.setTitle("跳转", forState: .Normal)
        clickBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        clickBtn.layer.cornerRadius = 2
        clickBtn.addTarget(self, action: #selector(NotificationFristVC.click), forControlEvents: .TouchUpInside)
        self.view.addSubview(clickBtn)
//        接受通知
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(NotificationFristVC.getMyName(_:)), name: "NotificationIdentifier", object: nil)
//        删除通知
        NSNotificationCenter.defaultCenter().removeObserver(self)
//    和上面的删除通知效果一样的    NSNotificationCenter.defaultCenter().removeObserver(self, name: "NotificationIdentifier", object: nil)
        
        
        
        // Do any additional setup after loading the view.
    }
    func click() {
        let notificationSecondVC = NotificationSecondVC()
        self.navigationController?.pushViewController(notificationSecondVC, animated: true)
        
    }
    func getMyName(notification:NSNotification)
    {
        //        获取词典中的值
        let name = notification.object?.valueForKey("name") as? String
        //        通知名称
        let nameNotification = notification.name
        //      notification.userInfo 接收object 对象 一些信息 例如入键盘的一些信息
        print(nameNotification)
        print(name)
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
