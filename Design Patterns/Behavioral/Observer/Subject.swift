//
//  Subject.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 16/02/23.
//

import Foundation

protocol Subject {
  func attach(o: Observer)
  func detach(o: Observer)
  func notifyUpdate(trafficLight: TrafficLight)
}
