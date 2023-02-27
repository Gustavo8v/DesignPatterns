//
//  Caratake.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 16/02/23.
//

import Foundation

class Carataker {
  private var estados = [ArticleMemento]()
  
  func addMemento(memento: ArticleMemento) {
    estados.append(memento)
  }
  
  func getMemento(index: Int) -> ArticleMemento {
    return estados[index]
  }
}
