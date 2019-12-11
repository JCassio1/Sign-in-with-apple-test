//
//  User.swift
//  Sign in with apple test
//
//  Created by MR.Robot 💀 on 10/12/2019.
//  Copyright © 2019 Joselson Dias. All rights reserved.
//

import Foundation
import AuthenticationServices

struct User{
    let id: String
    let firstName: String
    let lastName: String
    let email: String
    
    init(credentials: ASAuthorizationAppleIDCredential) {
        self.id = credentials.user
        self.firstName = credentials.fullName?.givenName ?? ""
        self.lastName = credentials.fullName?.familyName ?? ""
        self.email = credentials.email ?? ""
    }
}

//Allows to print out user object as string
extension User: CustomDebugStringConvertible{
    
    var debugDescription: String {
        return """
        ID: \(id)
        First Name: \(firstName)
        Last Name: \(lastName)
        Email: \(email)
        """
    }
    
}
