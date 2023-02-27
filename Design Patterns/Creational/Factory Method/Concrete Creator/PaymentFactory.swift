//
//  PaymentFactory.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import Foundation

class PaymentFactory {
  static func buildPayment(typePayment: TypePayment) -> PaymentProtocol {
    switch typePayment {
    case .GOOGLE:
      return GooglePayment()
    case .CARD:
      return CardPayment()
    }
  }
}
