//
//  PaymentInAdvanceCardFactory.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import Foundation

class PaymentInAdvanceCardFactory: AbstractFactory {
  func createPayment() -> PaymentAF {
    return CardPaymentAF()
  }
  
  func createMethod() -> MethodAF {
    return PaymentInAdvanceMethod()
  }
}

