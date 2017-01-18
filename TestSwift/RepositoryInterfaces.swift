//
//  RepositoryInterfaces.swift
//  TestSwift
//
//  Created by Wylog iOS Dev on 1/18/17.
//  Copyright © 2017 Wylog iOS Dev. All rights reserved.
//

import UIKit

@objc protocol Repository {
    @objc optional func saveInContext()
}

@objc protocol IUserAccountRepository : Repository {
    func saveUserInfo(userId: Int, userName: String, firstName: String, lastName: String, formInfo: NSData)
}
