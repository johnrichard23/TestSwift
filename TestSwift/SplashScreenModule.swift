//
//  SplashScreenModule.swift
//  TestSwift
//
//  Created by Wylog iOS Dev on 1/12/17.
//  Copyright © 2017 Wylog iOS Dev. All rights reserved.
//

class SplashScreenModule : BaseModule {
    
    var boundary : ISplashScreenBoundary?
    
    init(vcIdentity: ModuleIdentity, app: App) {
    super.init()
    self.appRef = app
    self.moduleIdentity = vcIdentity
}

    override func initializeMembers(outlets:Outlets?) {
        
    }
}
