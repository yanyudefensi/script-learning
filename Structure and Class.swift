//
//  Structure and Class.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/5.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation
class StructureAndClass {
    struct Resolution {
        var width = 0
        var height = 0
    }
    
    class VideoMode {
        var resolution = Resolution()
        var interlaced = false
        var frameRate = 0.0
        var name: String?
    }
    
    let someResolution = Resolution()
    let someVideoMode = VideoMode()
    
    //访问属性
    print("The width of someResolution is \(someResolution.width)")
    //Prints "The width of someResolution is 0"
    
    //还能深入访问子属性
    print("The width of someVideoMode is \(someVideoMode.resolution.width)")
    // Prints "The width of someVideoMode is 0"
    
    //为实例属性分配新值
    someVideoMode.resolution.width = 1280
    print("The width of someVideoMode is now \(someVideoMode.resolution.width)")
    // Prints "The width of someVideoMode is now 1280"
    
    //注意结构和枚举是值类型，类是引用类型
    let hd = Resolution(width: 1920, height: 1080)
    var cinema = hd
    //例如cinema 和 hd 被分配到两个独立的内存地址中
}


