//
//  ViewController.swift
//  Swift_ByVal
//
//  Created by ym on 16/8/10.
//  Copyright © 2016年 王宁. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var tableView:UITableView?
    var array = ["单例传值","代理传值","闭包传值","通知传值"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "首页"
        initTableView()
       
    }
    //初始化tableView
    func initTableView(){
        self.tableView = UITableView(frame:self.view.frame,style: UITableViewStyle.Plain)
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView!)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.array.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCellWithIdentifier("cell",forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = self.array[indexPath.row as Int]
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0
        {
            let singletonVC = SingletonFristVC()
            self.navigationController?.pushViewController(singletonVC, animated: true)
        }
        if indexPath.row == 1
        {
            let agentVC = AgentFristVC()
            self.navigationController?.pushViewController(agentVC, animated: true)
            
        }
        if indexPath.row == 2
        {
            let closure = ClosureFristVC()
            self.navigationController?.pushViewController(closure, animated: true)
            
        }
        if indexPath.row == 3
        {
            let notificationVC = NotificationFristVC()
            self.navigationController?.pushViewController(notificationVC, animated: true)
            
        }
    }
}

