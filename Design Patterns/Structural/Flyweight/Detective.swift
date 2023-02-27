//
//  Detective.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import Foundation

class Detective: Enemy {
  
  let life = 1000
  var weapon = ""
  
  func setWeapon(weapon: String) {
    self.weapon = weapon
    print("Weapon created: \(weapon)")
  }
  
  func lifePoints() {
    print("La vida de un detective es \(life)")
  }
}
