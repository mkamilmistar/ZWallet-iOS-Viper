//
//  LoginInteractorImpl.swift
//  Login
//
//  Created by MacBook on 24/05/21.
//

import Foundation

protocol LoginInteractorOutput {
    func authenticationResult(isSuccess: Bool, isActivate: Bool, isSetPin: Bool)
}
