//
//  SplashScreenViewBoundary.swift
//  TestSwift
//
//  Created by Wylog iOS Dev on 1/12/17.
//  Copyright © 2017 Wylog iOS Dev. All rights reserved.
//

import UIKit

class SplashScreenViewBoundary: NSObject, ISplashScreenBoundary, Navigation {
    
    var appRef : App?
    var splashScreenInteractor : ISplashScreen?
    var viewStates : ViewStates?
    var outlets : Outlets?
    
    
    init(outlets : Outlets, appRef: App) {
        
        super.init()
        self.appRef = appRef
     //   self.splashScreenInteractor =
     //   self.splashScreenInteractor!.boundary = self
        self.outlets = outlets
    }

}
