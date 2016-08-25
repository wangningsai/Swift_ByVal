//
//  AgentSecondVC.swift
//  Swift_ByVal
//
//  Created by ym on 16/8/23.
//  Copyright © 2016年 王宁. All rights reserved.
//

import UIKit
//创建协议
protocol GetMessageDelegate:NSObjectProtocol
{
//    回调方法  传入一个String类型的值
    func getMessage(controller:AgentSecondVC,string:String)
}
class AgentSecondVC: UIViewController {
    var delegate:GetMessageDelegate?
    var _textField:UITextField?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "页面二"
//        创建textField  用来输入要传送的值
        _textField = UITextField(frame:CGRectMake(60, 100, 200, 44))
        _textField?.borderStyle = UITextBorderStyle.RoundedRect
        _textField?.placeholder = "请输入要传送的值"
        self.view .addSubview(_textField!)
        
//        创建返回的button
        let myButton = UIButton(frame:CGRectMake(60, 200, 200, 44))
        myButton.backgroundColor = UIColor.redColor()
        myButton.center = CGPointMake(160, 200)
        myButton.setTitle("返回", forState: UIControlState.Normal)
        myButton.addTarget(self, action:#selector(goBack), forControlEvents:.TouchUpInside)
        self.view.addSubview(myButton)
    
        
        
    }
    func goBack() {
//        调用代理方法
        if ((delegate) != nil) {
            delegate?.getMessage(self, string:_textField!.text!)
            self.navigationController?.popViewControllerAnimated(true)
        }
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
