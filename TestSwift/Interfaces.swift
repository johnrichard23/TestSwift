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

enum ActionType : Int {
    case Tap = 0
}

enum EventType : Int {
    case ViewDidLoad = 0
    case ViewWillAppear = 1
    case ViewDidAppear = 2
    case ViewWillDisappear = 3
    case ViewDidDisappear = 4
    case MemoryWarning = 5
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

@objc protocol Navigation {
    @objc optional func loadView(info: [String : AnyObject]?)
    @objc optional func dismissView(info: [String : AnyObject]?)
}

@objc protocol ViewStates {
    @objc optional func defaultState()
    @objc optional func transactionError()
    @objc optional func networkError()
}
