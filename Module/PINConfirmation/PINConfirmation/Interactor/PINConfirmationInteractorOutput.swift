//
//  PINConfirmationInteractorOutput.swift
//  PINConfirmation
//
//  Created by MacBook on 27/05/21.
//

import Foundation
import UIKit
import Core

public protocol PINConfirmationInteractorOutput {
    func transactionResult(isSuccess: Bool)
}
