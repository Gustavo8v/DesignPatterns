//
//  AbstractFactory.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import Foundation

protocol AbstractFactory {
  func createPayment() -> PaymentAF
  func createMethod() -> MethodAF
}
