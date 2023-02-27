//
//  SecureCreditCard.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import Foundation

class SecureCreditCard: CreditCardProtocol {
  func makePayment() {
    print("Realizar el pago de forma segura")
  }
}
