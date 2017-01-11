//
//  Events.swift
//  TestSwift
//
//  Created by Wylog iOS Dev on 1/11/17.
//  Copyright © 2017 Wylog iOS Dev. All rights reserved.
//

import UIKit

@objc protocol ViewControllerLifeCycle {
    
    @objc optional func didLoad()
    @objc optional func willAppear()
    @objc optional func didAppear()
    @objc optional func willDisappear()
    @objc optional func didDisappear()
    @objc optional func memoryWarning()
}

@objc protocol ReachabilityEvents {
    @objc optional func reachableViaWifi()
    @objc optional func reachableViaCellular()
    @objc optional func unreachable()
}
