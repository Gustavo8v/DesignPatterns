//
//  EnemyFactory.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import Foundation

class EnemyFactory {
  
  private var enemies = [String : Enemy]()
  
  func getEnemy(type: String) -> Enemy {
    var enemy: Enemy
    if(enemies[type] != nil) {
      enemy = enemies[type]!
    } else {
      switch type {
      case "Private":
        print("Soldado creado")
        enemy = Private()
      case "Detective":
        print("Detective creado")
        enemy = Detective()
      default:
        enemy = Detective()
      }
      enemies[type] = enemy
    }
    return enemy
  }
}
