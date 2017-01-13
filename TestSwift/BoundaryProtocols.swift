//
//  BoundaryProtocols.swift
//  TestSwift
//
//  Created by Wylog iOS Dev on 1/12/17.
//  Copyright © 2017 Wylog iOS Dev. All rights reserved.
//

protocol ISplashScreenBoundary {
    
}

@objc protocol Boundary: ViewControllerLifeCycle, UserActions {
    var appRef: App? {get}
}
