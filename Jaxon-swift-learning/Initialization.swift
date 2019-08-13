//
//  Initialization.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/6.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation

class Initialization {
    
    struct Fahrenheit {
        var temperatrue: Double
        init() {
            temperatrue = 32.0
        }
    }
    
    
    
    //自定义初始化,参数标签fromFahrenheit、参数名称fahrenheit
    struct Celsius {
        var temperatureInCelsius: Double
        init(fromFahrenheit fahrenheit: Double) {
            temperatureInCelsius = (fahrenheit - 32.0) / 1.8
        }
        init(fromKelvin kelvin: Double) {
            temperatureInCelsius = kelvin - 273.15
        }
    }
    

    
    struct Color {
        let red, green, blue: Double
        init(red: Double, green: Double, blue: Double) {
            self.red = red
            self.green = green
            self.blue = blue
        }
        init(white: Double) {
            red = white
            green = white
            blue = white
        }
    }
    

    
    //结构类型默认值
    struct Size {
        var width = 0.0, height = 0.0
    }
    struct Point {
        var x = 0.0, y = 0.0
    }

    struct Rect {
        var origin = Point()
        var size = Size()
        init() {}
        init(origin: Point, size: Size) {
            self.origin = origin
            self.size = size
        }
        init(center: Point, size: Size) {
            let originX = center.x - (size.width / 2)
            let originY = center.y - (size.height / 2)
            self.init(origin: Point(x: originX, y: originY), size: size)
            
        }
    }
    
    //基类Vehicle，以及继承类Bicycle
    class Vehicle {
        var numberOfWheels = 0
        var description: String {
            return "\(numberOfWheels) wheel(s)"
        }
    }
        
        class Bicycle: Vehicle {
            override init() {
                super.init()
                numberOfWheels = 2
            }
        }

    
        
    //两种初始化
        class Food {
            var name: String
            init(name: String) {
                self.name = name
            }
            convenience init() {
                self.init(name: "[Unnamed]")
            }
        }
        

        
    
    }
    


