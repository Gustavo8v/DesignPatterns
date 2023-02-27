//
//  Car.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 16/02/23.
//

import Foundation

class Car: Observer {
  func update(trafficLight: TrafficLight) {
    if(trafficLight.status as AnyObject === "CARD_RED" as AnyObject) {
      print("Semaforo coche está en rojo -> Coche NO puede pasar")
    } else {
      print("Semaforo coche está en verde -> Coche SI puede pasar")
    }
  }
}
