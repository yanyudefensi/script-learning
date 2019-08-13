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
    

    // the DataImporter instance for the importer property has not yet been created
    
//    print(manager.importer.filename)
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

    
    //如果只有getter而没有setter的话，称为只读属性
    struct Cuboid {
        var width = 0.0, height = 0.0, depth = 0.0
        var volume: Double {
            return width * height * depth
        }
    }

    
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

    
    //静态变量，只读
    struct SomeStructure {
        static var storedTypeProperty = "Some Value."
        static var computedTypeProperty: Int {
            return 27
        }
    }
//didSet起到一个限制频率的作用（10以内）
    struct AudioChannel {
        static let thresholdLevel = 10
        static var maxInputLevelForAllChannels = 0
        var currentLevel: Int = 0 {
            didSet {
                if currentLevel > AudioChannel.thresholdLevel {
                    // cap the new audio level to the threshold level
                    currentLevel = AudioChannel.thresholdLevel
                }
                if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                    // store this as the new overall maximum input level
                    AudioChannel.maxInputLevelForAllChannels = currentLevel
                }
            }
        }
    }
    

}
