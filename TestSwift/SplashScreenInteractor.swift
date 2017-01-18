//
//  SplashScreenInteractor.swift
//  TestSwift
//
//  Created by Wylog iOS Dev on 1/18/17.
//  Copyright © 2017 Wylog iOS Dev. All rights reserved.
//

import UIKit

class SplashScreenInteractor: NSObject, ISplashScreen {
    
    var boundary : Boundary?
    var repo : IUserAccountRepository?
    var registrationLoader : IRegistrationLoader?
    
    init(repo: IUserAccountRepository) {
        self.repo = repo
    }

}
