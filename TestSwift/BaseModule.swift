//
//  BaseModule.swift
//  TestSwift
//
//  Created by Wylog iOS Dev on 1/11/17.
//  Copyright © 2017 Wylog iOS Dev. All rights reserved.
//

import UIKit

class BaseModule: NSObject, Module {
    
    var appRef: App?
    var nextModule: Module?
    var moduleIdentity : ModuleIdentity?
    
    func setup(outlets: Outlets?, identity: Int) {
        
        if moduleIdentity?.rawValue == identity {
            initializeMembers(outlets: outlets)
        }
        
        if (nextModule != nil) {
            nextModule?.setup(outlets: outlets, identity: identity)
        }
    }
    
    func getModule(identity: Int) -> Module {
        if moduleIdentity?.rawValue == identity {
            return self
        }
        else {
            return nextModule!.getModule(identity: identity)
        }
    }
    
    func initializeMembers(outlets: Outlets?) {
        print(#function)
    }

}
