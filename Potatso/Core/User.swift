//
//  User.swift
//  Potatso
//
//  Created by LEI on 8/18/16.
//  Copyright © 2016 TouchingApp. All rights reserved.
//

import Foundation

class User {

    static let currentUser = User()

    var id: String {
        if let id = keychain["userId"] {
            return id
        } else {
            let random = NSUUID().UUIDString
            keychain["userId"] = random
            return random
        }
    }

}