//
//  Closure.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/2.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation

class Closure {
    
    //排序闭包介绍，下面是未使用闭包的例子
    let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
    func backward(_ s1: String, _ s2: String) -> Bool {
        return s1 > s2
    }
    
    var reverserdNames = names.sorted(by: backward) //举例用
    
    //使用闭包语法可以简化代码
    reversedNames = name.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
    
    //甚至可以将变量类型交由系统判断
    reversedNames = names.sorted(by: {s1, s2 in return s1 > s2})
    
    reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
    
    
    //尾随闭包，将闭包表达式作为函数的最终参数传递给函数
    //以map举例,这个例子比较有代表性
    let digitNames = [
        0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
        5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
    ]
    let numbers = [16, 58, 510]
    
    let strings = numbers.map { (number) -> String in
        var number = number
        var output = ""
        repeat {
            output = digitNames[number % 10]! + output
            number /= 10
        } while number > 0
        return output
    }
    // strings is inferred to be of type [String]
    // its value is ["OneSix", "FiveEight", "FiveOneZero"]
    // digitNames[number % 10]!,这里是强制解包操作，避免字典查找失败
    
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
    
  //此示例设置一个常量incrementByTen，该常量调用以引用每次调用时添加10到其runningTotal变量的增量函数。多次调用该函数会显示此行为
    let incrementByTen = makeIncrementer(forIncrement: 10)
    
    incrementByTen()
    // returns a value of 10
    incrementByTen()
    // returns a value of 20
    incrementByTen()
    // returns a value of 30
    
    //@escaping,逃避？？这个装饰器作用不是很理解，个人猜测是允许插入completion handler
    var completionHandlers: [() -> Void] = []
    func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
        completionHandlers.append(completionHandler)
    
}
    
    func someFunctionWithNonescapingClosure(closure: () -> Void) {
        closure()
    }
    
    //延迟评估，有些代码执行的代价很高，使用闭包不运行内部代码
    var customersInLine = ["Chris","Alex","Ewa"]
    print(customersInLine.count)
    //print "5"
    
    let customerProvider = { customersInLine.remove(at: 0)}//仅作演示用
    print(customersInLine.count)
    //print "5"
    
    //@autoclosure装饰器，延迟评估
    // customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]
    func serve(customer customerProvider: () -> String) {
        print("Now serving \(customerProvider())!")
    }
    serve(customer: { customersInLine.remove(at: 0) } )
    // Prints "Now serving Alex!"
}
