//
//  property.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/5.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation

class property{
    
    //length将不能改变因为是常量
    struct FixedLengthRange {
        var firstValue: Int
        let length: Int
    }
    var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
    
    //若存储实例为常量，则实例属性无法被改变
    let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
    
    //延迟属性，某些代码执行代价高则需要该设置,lazy关键字
    class DataImporter {
        var filename = "data.txt"
    }
    
    class DataManger {
        lazy var importer = DataImporter()
        var data = [String]()
    }
    
    let manager = DataManger()
    manager.data.append("Some data")
    // the DataImporter instance for the importer property has not yet been created
    
    print(manager.importer.filename)
    // the DataImporter instance for the importer property has now been created
    // Prints "data.txt"
    
    //get 和 set 的用法,检索属性和值
    struct Point {
        var x = 0.0, y = 0.0
    }
    struct Size {
        var width = 0.0, height = 0.0
    }
    
    struct Rect {
        var origin = Point()
        var size = Size()
        var center: Point {
            get {
                    let centerX = origin.x + (size.width / 2)
                    let centerY = origin.y + (size.width / 2)
                return Point(x: centerX, y: centerY)
            }
            set(newCenter) {
               origin.x = newCenter.x - (size.width / 2)
                origin.y = newCenter.y - (size.height / 2)
                
            }
        }
    }
    var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
    //重设正方体中心
    square.center = Point(x: 15.0, y: 15.0)
    //输出正方体的边缘
    print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
    // Prints "square.origin is now at (10.0, 10.0)"，这里不是很确定能不能直接定位到origin
    
    //如果只有getter而没有setter的话，称为只读属性
    struct Cuboid {
        var width = 0.0, height = 0.0, depth = 0.0
        var volume: Double {
            return width * height * depth
        }
    }
    let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
    print("the volume of fourByFiveByTwo is \(fourByFiveTwo.volume)")
    // Prints "the volume of fourByFiveByTwo is 40.0"
    
    //willSet,在值改变前调用，didSet,在值改变后立即调用
    class StepCounter {
        var totalSteps: Int = 0 {
            willSet(newTotalSteps) {
                print("About to set totalSteps to \(newTotalSteps)")
            }
            didSet {
                if totalSteps > oldValue {
                    print("Added \(totalSteps - oldValue) steps")
                }
            }
        }
    }
    let stepCounter = StepCounter()
    stepCounter.totalSteps = 200
    // About to set totalSteps to 200
    // Added 200 steps
    stepCounter.totalSteps = 360
    // About to set totalSteps to 360
    // Added 160 steps
    
    //静态变量，只读
    struct SomeStructure {
        static var storedTypeProperty = "Some Value."
        static var computedTypeProperty: Int {
            return 27
        }
    }
}
