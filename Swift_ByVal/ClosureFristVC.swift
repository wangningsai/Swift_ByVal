//
//  ClosureFristVC.swift
//  Swift_ByVal
//
//  Created by ym on 16/8/23.
//  Copyright © 2016年 王宁. All rights reserved.
//

import UIKit

class ClosureFristVC: UIViewController {
    var showLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "页面一"
self.view.backgroundColor = UIColor.grayColor()
        showLabel.frame = CGRectMake(60, 200, 200, 40)
        showLabel.backgroundColor = UIColor.whiteColor()
        showLabel.layer.cornerRadius = 2
        self.view.addSubview(showLabel)
        
        let clickBtn = UIButton(frame:CGRectMake(100, CGRectGetMaxY(showLabel.frame)+10, 60, 40))
        clickBtn.setTitle("跳转", forState: .Normal)
        clickBtn.backgroundColor = UIColor.greenColor()
        clickBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        clickBtn.layer.cornerRadius = 2
        clickBtn.addTarget(self, action:#selector(ClosureFristVC.click), forControlEvents: .TouchUpInside)
        self.view.addSubview(clickBtn)
        
        // Do any additional setup after loading the view.
    }
    func click()  {
        let closureSecondVC = ClosureSecondVC()
//        实现回调，获取回调的数据（闭包）
        closureSecondVC.backClosure = {
            (backStr:String)->Void in
            self.showLabel.text = backStr
        }
        self.navigationController?.pushViewController(closureSecondVC, animated: true)
        
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
