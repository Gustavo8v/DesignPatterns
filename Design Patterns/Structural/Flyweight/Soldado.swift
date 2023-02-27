//
//  Soldado.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import Foundation

class Private: Enemy {
  
  let life = 200
  var weapon = ""
  
  func setWeapon(weapon: String) {
    self.weapon = weapon
    print("Weapon created: \(weapon)")
  }
  
  func lifePoints() {
    print("La vida de un soldado es \(life)")
  }
}
