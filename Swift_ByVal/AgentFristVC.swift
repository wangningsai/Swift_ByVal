//
//  AgentFristVC.swift
//  Swift_ByVal
//
//  Created by ym on 16/8/23.
//  Copyright © 2016年 王宁. All rights reserved.
//

import UIKit

class AgentFristVC: UIViewController,GetMessageDelegate {
    var _button = UIButton()
    var _label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "页面一"
//        创建label 用来接收传过来的数据
        _label = UILabel(frame:CGRectMake(50, 100, 220, 44))
        _label.text = "得到的数据"
        _label.textAlignment = NSTextAlignment.Center
        _label.backgroundColor = UIColor.cyanColor()
        self.view.addSubview(_label)
        
//        创建button，点击跳转到下个界面
        let ColorBtn = UIButton();
        ColorBtn.frame = CGRectMake(60, 200, 60, 40)
        ColorBtn.setTitle("跳转", forState: UIControlState.Normal)
        ColorBtn.backgroundColor = UIColor.greenColor()
        ColorBtn .addTarget(self, action:#selector(click), forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view .addSubview(ColorBtn)
        // Do any additional setup after loading the view.
    }
    func click() {
        let agentSecondVC = AgentSecondVC()
        agentSecondVC.delegate = self
        self.navigationController?.pushViewController(agentSecondVC, animated: true)
    }
//    接收传过来的值
    func getMessage(controller: AgentSecondVC, string: String) {
        _label.text = string
        if string == ""
        {
            _label.text = "null"
        }
    }
    
}
