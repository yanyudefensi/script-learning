//
//  protocol.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/13.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation
//interface接口
protocol FullyNamed {
    var fullName: String { get }
}

class Starship：FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix!+" " : "") + name
    }
}

protocol RandomNumberGenerator {
    func random() -> Double
}

//伪随机数生成器
class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}

//类中加入协议
class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    
    func roll() -> Int {
        return Int(generator.random() * Double(sides) + 1)
    }
}
