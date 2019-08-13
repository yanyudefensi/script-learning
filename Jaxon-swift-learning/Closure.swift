//
//  Closure.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/2.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation

class Closure {
    
    //闭包捕获常量和变量
    //给出一个嵌套函数case，输出内层函数
    func makeIncrementer(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0
        func incrementer() -> Int {
            runningTotal += amount
            return runningTotal
        }
        return incrementer
    }
 
    
    //@escaping,逃避？？这个装饰器作用不是很理解，个人猜测是允许插入completion handler
    var completionHandlers: [() -> Void] = []
    func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
        completionHandlers.append(completionHandler)
    
}
    
    func someFunctionWithNonescapingClosure(closure: () -> Void) {
        closure()
    }
}
