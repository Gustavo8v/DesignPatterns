//
//  Pedestrian.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 16/02/23.
//

import Foundation

class Pedestrian : Observer {
  func update(trafficLight: TrafficLight) {
    if(trafficLight.status as AnyObject === "CARD_RED" as AnyObject) {
      print("Semaforo Peaton está en verde -> Peaton SI puede pasar")
    } else {
      print("Semaforo Peaton está en Rojo -> Peaton NO puede pasar")
    }
  }
}
