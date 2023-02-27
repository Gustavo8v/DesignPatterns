//
//  ClassicCreditCardBridge.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import Foundation

class ClassicCreditCardBridge: CredirCardBridge {
  
  override init(credirCard: CreditCardProtocol) {
    super.init(credirCard: credirCard)
  }
  
  override func makePayment() {
    credirCard.makePayment()
  }
}
