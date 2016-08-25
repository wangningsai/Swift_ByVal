//
//  NotificationSecondVC.swift
//  Swift_ByVal
//
//  Created by ym on 16/8/23.
//  Copyright © 2016年 王宁. All rights reserved.
//

import UIKit

class NotificationSecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "页面二"
        self.view.backgroundColor = UIColor.grayColor()
        let clickBtn = UIButton(frame:CGRectMake(80, 250, 60, 40))
        clickBtn.backgroundColor = UIColor.greenColor()
        clickBtn.setTitle("返回", forState: .Normal)
        clickBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        clickBtn.layer.cornerRadius = 2
        clickBtn.addTarget(self, action: #selector(NotificationSecondVC.back), forControlEvents: .TouchUpInside)
        self.view.addSubview(clickBtn)

     

               
        // Do any additional setup after loading the view.
    }
    func back() {
        
        let dict = ["name":"hello"]
        NSNotificationCenter .defaultCenter().postNotificationName("NotificationIdentifier", object: dict, userInfo: dict)
        
        self.navigationController?.popViewControllerAnimated(true)
        
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
