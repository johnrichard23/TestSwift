//
//  BaseViewController.swift
//  TestSwift
//
//  Created by Wylog iOS Dev on 1/11/17.
//  Copyright © 2017 Wylog iOS Dev. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    var screenRect : CGRect?
    var statusBarRect : CGRect?
    var moduleId : ModuleIdentity?

    override func viewDidLoad() {
        
        screenRect = UIScreen.main.bounds
        super.viewDidLoad()
        
 //       NotificationCenter.default.addObserver(self, selector: "dismissModalViewControllerAnimated", name: LogoutNotification, object: nil)
        statusBarRect = UIApplication.shared.statusBarFrame
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black;
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.tabBarController?.tabBar.isTranslucent = false
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
