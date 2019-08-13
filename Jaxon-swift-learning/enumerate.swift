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
    

    
    //枚举是数据结构，提供丰富数据储存格式
    enum Barcode {
        case upc(Int, Int, Int, Int)
        case qrCode(String)
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
    
}

