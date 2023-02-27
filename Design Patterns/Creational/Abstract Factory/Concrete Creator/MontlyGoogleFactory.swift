//
//  MontlyGoogleFactory.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import Foundation

class MontlyGoogleFactory: AbstractFactory {
  func createPayment() -> PaymentAF {
    return GooglePaymentAF()
  }
  
  func createMethod() -> MethodAF {
    return MontlyMethod()
  }
}
