//
//  CredirCardBridge.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import Foundation

class CredirCardBridge {
  let credirCard: CreditCardProtocol
  
  init(credirCard: CreditCardProtocol) {
    self.credirCard = credirCard
  }
  
  func makePayment(){
    
  }
}
