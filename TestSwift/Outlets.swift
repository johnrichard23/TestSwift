//
//  Outlets.swift
//  TestSwift
//
//  Created by Wylog iOS Dev on 1/11/17.
//  Copyright © 2017 Wylog iOS Dev. All rights reserved.
//

import UIKit

@objc protocol Outlets {
    
    @objc optional var buttonDelegate : OutletButtonDelegate? {get set}
}

@objc protocol OutletButtonDelegate {
    
    func didTapBtn(sender: AnyObject?)
}
