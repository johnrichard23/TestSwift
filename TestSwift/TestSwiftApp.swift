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
    
    class appInstance {
        static let sharedInstance = appInstance()
    }
    
    
    override init() {
        super.init()
        
        let splashScreen = SplashScreenModule(vcIdentity: ModuleIdentity.SplashScreenModule, app: self)
        
        self.mainModule = splashScreen
        
    }
    
    func initializeReachability() {
        
        reachability = Reachability.init()
        
        reachability!.whenReachable = { reachability in
            if reachability.isReachableViaWiFi {
                print("Reachable via WiFi")
            }
            else {
                print("Reachable via Cellular")
            }
            
        }
        
        reachability!.whenUnreachable = { reachability in
            print("Not reachable")
        }
        
        do {
            try reachability?.startNotifier()
        } catch {
            print("Unable to start notifier")
        }
    }
    
    func module(outlets: Outlets?, identity: ModuleIdentity) {
        self.mainModule?.setup(outlets: outlets, identity: identity.rawValue)
    }
    
    func postEvent(identity: ModuleIdentity, event: EventType) {
        
        let target : Module = mainModule!.getModule(identity: identity.rawValue)
        
        switch event {
        case EventType.ViewDidLoad:
            target.didLoad?()
            break
        case EventType.ViewWillAppear:
            target.willAppear?()
            break
        case EventType.ViewDidAppear:
            target.didAppear?()
            break
        case EventType.ViewWillDisappear:
            target.willDisappear?()
            break
        case EventType.ViewDidDisappear:
            target.didDisappear?()
            break
        case EventType.MemoryWarning:
            target.memoryWarning?()
            break
        }
    }
    
    func postAction(identity: ModuleIdentity, event: ActionType) {
        
        let target : Module = mainModule!.getModule(identity: identity.rawValue)
        
        switch event {
        case ActionType.Tap:
            target.didTap?()
        }
    }
    
    
}
