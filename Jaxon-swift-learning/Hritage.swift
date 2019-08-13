//
//  Hritage.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/6.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation

//类的继承
class Hritage {
    class Vehicle {
        var currentSpeed = 0.0
        var description: String {
            return "traveling at \(currentSpeed) miles per hour"
        }
        func makeNoise() {
            // do nothing - an arbitrary vehicle doesn't necessarily make a noise
        }
    }
    
    let someVehicle = Vehicle()
    
    //子类和超类
    class Bicycle: Vehicle {
        var hasBasket = false
    }
    

    
    //swift语法中的方法重载，override
    //super前缀访问超类方法
    class Train: Vehicle {
        override func makeNoise() {
            print("right")
        }
    }
    
    class Car: Vehicle {
        var gear = 1
        override var description: String {
            return super.description + " in gear \(gear)"
        }
    }
    
    //automaticCar表示自动变速器，基于当前的速度自动选择合适的齿轮
    class AutomaticCar: Car {
        override var currentSpeed: Double {
            didSet {
                gear = Int(currentSpeed / 10.0) + 1
            }
        }
    }
    

    
}
