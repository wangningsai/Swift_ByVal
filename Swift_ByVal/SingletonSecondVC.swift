//
//  SingletonSecondVC.swift
//  Swift_ByVal
//
//  Created by ym on 16/8/23.
//  Copyright © 2016年 王宁. All rights reserved.
//

import UIKit

class SingletonSecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "页面二"
               // Do any additional setup after loading the view.
    }
//重写父类方法，并且调用单例的变量完成数值的传递
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        self.view.backgroundColor = appDelegate.backgroundColor
        
    }
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
