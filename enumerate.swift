//
//  enumerate.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/5.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation

class my_enumerate{
    //枚举和类相当相似
    enum CompassPoint {
        case north
        case south
        case east
        case west
    }
    
    var directionToHead = CompassPoint.west
    
    //使用switch语句匹配枚举值
    switch directionToHead {
    case .south:
        print("Lots of planets have a north")
    case .south:
        print("Watch out for penguins")
    case .east:
        print("Where the sun rises")
    case .west:
        print("Where the skies are blue")
    }
    //Prints "Watch out for penguins"
    
    //枚举是数据结构，提供丰富数据储存格式
    enum Barcode {
        case upc(Int, Int, Int, Int)
        case qrCode(String)
    }
    
    var productBarcode = Barcode.upc(8, 85909, 51226, 3)
    
    //可以用变量或常量承接枚举值
    switch productBarcode {
    case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
    case .qrCode(let productCode):
    print("QR code: \(productCode).")
    }
    // Prints "QR code: ABCDEFGHIJKLMNOP."
    switch productBarcode {
    case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
    case let .qrCode(productCode):
    print("QR code: \(productCode).")
    }
    
    enum CompassPoint_new: String {
        case north, south, east, west
    }
    
    enum Planet: Int {
        case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    }
    
    //rawValue访问枚举案例的原始值
    let sunsetDirection = CompassPoint_new.west.rawValue
    // sunsetDirection is "west"
    
    //给枚举实例赋值
    let possiblePlanet = Planet(rawValue: 7)
    // possiblePlanet is of type Planet? and equals Planet.uranus
    
    //递归枚举，给出一个存储简单算术表达式的枚举,indrect指示递归
    enum ArithmeticExpression {
        case number(Int)
        indirect case addition(ArithmeticExpression, ArithmeticExpression)
        indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
    }
    
    let five = ArithmeticExpression.number(5)
    let four = ArithmeticExpression.number(4)
    let sum = ArithmeticExpression.addition(five, four)
    let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))
}

