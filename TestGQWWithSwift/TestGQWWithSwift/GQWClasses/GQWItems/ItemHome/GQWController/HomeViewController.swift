//
//  HomeViewController.swift
//  TestGQWWithSwift
//
//  Created by Broc on 2017/6/5.
//  Copyright © 2017年 Broc. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeViewController")
        self.navigationController?.tabBarItem.badgeValue = "new"
        let lastNav : BaseNavigationController = self.navigationController?.tabBarController?.viewControllers?[3] as! BaseNavigationController
        lastNav.tabBarItem.badgeValue = "this"
        
        
        self.navigationController?.tabBarController?.selectedIndex = 2
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
