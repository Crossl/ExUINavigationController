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
    var dataArr = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataArr = ["1","2"]
        tableView.backgroundColor = .blue
        tableView.frame = self.view.frame
        tableView.delegate = self
        tableView.dataSource = self
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
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cell";
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: cellID)
        
        cell.textLabel?.text = String(dataArr[indexPath.row] as! String)
        cell.detailTextLabel?.text = "test\(dataArr[indexPath.row])"
        
        
        
        return cell
    }
    
}

