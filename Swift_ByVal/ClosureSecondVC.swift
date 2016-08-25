//
//  ClosureSecondVC.swift
//  Swift_ByVal
//
//  Created by ym on 16/8/23.
//  Copyright © 2016年 王宁. All rights reserved.
//

import UIKit
//定义闭包类型（特定的函数类型函数类型）
typealias InputClosureType = (String) ->Void
class ClosureSecondVC: UIViewController {
    var textField = UITextField()
    var backClosure:InputClosureType?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "页面二"
        self.view.backgroundColor = UIColor.grayColor()
        textField.frame = CGRectMake(60, 200, 200, 40)
        textField.placeholder = "请输入要返回的数据"
        textField.backgroundColor = UIColor.whiteColor()
        textField.layer.cornerRadius = 1
        self.view.addSubview(textField)
        
        let backBtn = UIButton(frame:CGRectMake(100, CGRectGetMaxY(textField.frame)+10, 60, 40))
        backBtn.backgroundColor = UIColor.redColor()
        backBtn.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        backBtn.setTitle("返回", forState: .Normal)
        backBtn.addTarget(self, action: #selector(ClosureSecondVC.clickBtn), forControlEvents: .TouchUpInside)
        self.view.addSubview(backBtn)
        // Do any additional setup after loading the view.
    }
    func clickBtn() {
//        创建闭包方法
        if  self.backClosure != nil
        {
            if let tempString = self.textField.text
            {
                self.backClosure!(tempString)
            }
        }
        
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
