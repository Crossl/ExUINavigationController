//
//  ViewController.swift
//  ExUINavigationController
//
//  Created by Cross on 2019/12/21.
//  Copyright © 2019 Cross. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    var tableView = UITableView()
    

    var dataArr = Array<Dictionary<String,String>>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.backgroundColor = .blue
        tableView.frame = self.view.frame
        tableView.delegate = self
        tableView.dataSource = self
        
        var dc1 = Dictionary<String, String>()
        dc1["title"] = "title1"
        dc1["content"] = "content1"
        
        var dc2 = Dictionary<String, String>()
        dc2["title"] = "title2"
        dc2["content"] = "content2"
        
        dataArr = [dc1, dc2]
        
        self.view.addSubview(tableView)
        
        
    }


    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let arrContent = ArticleViewController()
        self.navigationController?.pushViewController(arrContent, animated: true)
        arrContent.message = dataArr[indexPath.row]["content"]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cell";
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: cellID)

        cell.textLabel?.text = dataArr[indexPath.row]["title"]
        cell.detailTextLabel?.text = dataArr[indexPath.row]["content"]
        
        return cell
    }
    
}

