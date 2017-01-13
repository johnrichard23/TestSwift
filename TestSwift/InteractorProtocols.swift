//
//  InteractorProtocols.swift
//  TestSwift
//
//  Created by Wylog iOS Dev on 1/12/17.
//  Copyright © 2017 Wylog iOS Dev. All rights reserved.
//

import CoreData


@objc protocol ISplashScreen : Interactor, ViewControllerLifeCycle {
    
    @objc optional func checkUpdateNeeded()
    @objc optional func updateModule()
}

@objc protocol Interactor {
    var boundary : Boundary? {get set}
}
