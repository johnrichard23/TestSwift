//
//  TestSwiftApp.swift
//  TestSwift
//
//  Created by Wylog iOS Dev on 1/11/17.
//  Copyright © 2017 Wylog iOS Dev. All rights reserved.
//

import UIKit

class TestSwiftApp: NSObject, App, ViewControllerLifeCycle, ReachabilityEvents {
    
    var mainModule : Module?
    var sharedData : AnyObject?
    var reachability : Reachability?
  /*
    class var appInstance: TestSwiftApp {
        struct static {
            static var instance : TestSwiftApp?
            
        }
    }
*/
    
    override init() {
        super.init()
        
     //   let splashScreen = SplashScreenModule(vcI)
    }
}
