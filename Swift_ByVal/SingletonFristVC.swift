//
//  SingletonFristVC.swift
//  Swift_ByVal
//
//  Created by ym on 16/8/23.
//  Copyright © 2016年 王宁. All rights reserved.
//

import UIKit

class SingletonFristVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "页面一"
        self.view.backgroundColor = UIColor.whiteColor();
        let ColorBtn = UIButton();
        ColorBtn.frame = CGRectMake(60, 100, 60, 40)
        ColorBtn.setTitle("跳转", forState: UIControlState.Normal)
        ColorBtn.backgroundColor = UIColor.greenColor()
        ColorBtn .addTarget(self, action:#selector(click), forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view .addSubview(ColorBtn)
        [self .changeBlue()];

        
        // Do any additional setup after loading the view.
    }
    func click() {
        let singletonSecondVC = SingletonSecondVC()
        self.navigationController?.pushViewController(singletonSecondVC, animated: true)
    }

//        创建单例对象
    func changeBlue() {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.backgroundColor = UIColor.blueColor();
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
