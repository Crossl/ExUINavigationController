//
//  ArticleViewController.swift
//  ExUINavigationController
//
//  Created by Cross on 2019/12/21.
//  Copyright © 2019 Cross. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {

    var message:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: CGRect(x:100,y:200,width: 200,height: 100))
        label.text = self.message
        label.backgroundColor = .red
        self.view.addSubview(label)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
