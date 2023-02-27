//
//  ViewController.swift
//  Design Patterns
//
//  Created by Gustavo Gutierrez Vicente on 15/02/23.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    view.backgroundColor = .red
    //testFactoryMethod()
    //testAbstractFactory()
    //testBridge()
    //testFlyweight()
    //testObserver()
    testMemento()
  }
  
  func testMemento(){
    let carataker = Carataker()
    var article = ArticleOriginator(id: 1, title: "Memento", text: "Memento es una película")
    carataker.addMemento(memento: article.createMemento())
    article.text = "Memento es una película de Nolam protagonizada por Guy Pearce"
    print(article.text)
    carataker.addMemento(memento: article.createMemento())
    let memento1: ArticleMemento = carataker.getMemento(index: 0)
    let memento2: ArticleMemento = carataker.getMemento(index: 1)
    article.restore(memento: memento1)
    print(article.text)
    article.restore(memento: memento2)
    print(article.text)
  }
  
  let enemyType = ["Private", "Detective"]
  let weapon = ["Fusil", "Revolver", "Pistola", "9mm"]
  
  func getRandomEnemyType() -> String {
    let number = Int.random(in: 0 ..< enemyType.count)
    return enemyType[number]
  }
  
  func getRandomWeaponType() -> String {
    let number = Int.random(in: 0 ..< weapon.count)
    return weapon[number]
  }
  
  func testFactoryMethod(){
    var payment: PaymentProtocol
    payment = PaymentFactory.buildPayment(typePayment: .GOOGLE)
    payment.doPayment()
  }
  
  func testAbstractFactory(){
    PaymentMethodClient.codigoCliente(factory: MontlyGoogleFactory())
    PaymentMethodClient.codigoCliente(factory: PaymentInAdvanceCardFactory())
  }
  
  func testBridge(){
    var classic = ClassicCreditCardBridge(credirCard: UnsecureCreditCard())
    classic.makePayment()
    
    classic = ClassicCreditCardBridge(credirCard: SecureCreditCard())
    classic.makePayment()
  }
  
  func testFlyweight(){
    let enemyFactory = EnemyFactory()
    for _ in 0...10 {
      let enemy = enemyFactory.getEnemy(type: getRandomEnemyType())
      enemy.setWeapon(weapon: getRandomWeaponType())
      enemy.lifePoints()
    }
  }
  
  func testObserver() {
    let car = Car()
    let pedestrian = Pedestrian()
    var trafficLight = TrafficLight(status: "CAR_GREEN")
    let messagePublisher = MessagePublisher()
    messagePublisher.attach(o: car)
    messagePublisher.attach(o: pedestrian)
    messagePublisher.notifyUpdate(trafficLight: trafficLight)
    sleep(2)
    trafficLight.status = "CAR_RED"
    messagePublisher.notifyUpdate(trafficLight: trafficLight)
    messagePublisher.detach(o: car)
    messagePublisher.detach(o: pedestrian)
  }
}

