//
//  Interfaces.swift
//  TestSwift
//
//  Created by Wylog iOS Dev on 1/11/17.
//  Copyright © 2017 Wylog iOS Dev. All rights reserved.
//

import UIKit

enum ModuleIdentity : Int {
    case SplashScreenModule = 0
}

@objc protocol App {
    var sharedData : AnyObject? {get set}
}

@objc protocol Module : UserActions, ViewControllerLifeCycle {
    
    var appRef: App? {get}
    
    func setup(outlets: Outlets?, identity: Int)
    func initializeMembers(outlets: Outlets?)
    func getModule(identity: Int) -> Module
    
}
