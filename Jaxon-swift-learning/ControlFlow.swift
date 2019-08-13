//
//  ControlFlow.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/2.
//  Copyright © 2019 cmb. All rights reserved.
//
// 注：此处部分代码只能在主函数运行,供学习举例使用，未将其封装为方法。

import Foundation

class ControlFlow {
    //for - in循环

    // Hello, Anna!
    // Hello, Alex!
    // Hello, Brian!
    // Hello, Jack!}
    //guard语句和if语句相似，gurad语句呀求条件必须为true才能guard执行语句后的代码
    func greet(person: [String: String]) {
        guard let name = person["name"] else {
            return
        }
        
        print("Hello \(name)!")
        
        guard let location = person["location"] else {
            print("I hope the weather is nice near you.")
            return
        }
        
        print("I hope the weather is nice in \(location).")
    }
}
