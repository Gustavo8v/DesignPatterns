//
//  PaymentMethodClient.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import Foundation

class PaymentMethodClient {
  static func codigoCliente(factory: AbstractFactory) {
    let payment = factory.createPayment()
    let method = factory.createMethod()
    payment.doPayment()
    method.calculatePayment()
  }
}
