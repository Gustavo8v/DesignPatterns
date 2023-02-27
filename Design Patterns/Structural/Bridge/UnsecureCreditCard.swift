//
//  UnsecureCreditCard.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import Foundation

class UnsecureCreditCard: CreditCardProtocol {
  func makePayment() {
    print("Pago realizado sin seguridad")
  }
}
