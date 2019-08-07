//
//  File.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/2.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation

class Function{
    //给出一个参数是string输出是string的函数
    func greet(person: String) -> String {
        let greeting = "Hello," + person + "!"
        return greeting
    }
    
    //没有参数输入
    func sayHelloWorld() -> String {
        return "hello,world"
    }
    
    //多个参数输入
    func greet(person: String, alreadyGreeted: Bool) -> String {
        if alreadyGreeted {
            return greet(person: person)
        } else {
            return greet(person: person)
        }
    }
    
    //没有返回值的函数
    func greet(person: String) {
        print("Hello, \(person)!")
    }
    
    //多个返回值，查找Int值数组中的最小和最大数字：
    func minMax(array: [Int]) -> (min: Int, max: Int) {
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
    /*if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
     print("min is \(bounds.min) and max is \(bounds.max)")
     }
     Prints "min is -6 and max is 109" */
    
    //写入参数名称作为参数标签，增加函数的可读性
    func greet_scond(person:String, from hometown: String) -> String {
        return "Hello \(person)! Glad you could visit from \(hometown)."
    }
    
    //也可以增加下划线，省略掉参数标签
    func someFunction(_ firstParameterName: Int, secondParameterName: Int) {}
    
    //someFunction(1, secondParameterName: 2)
    
    //设置默认参数
    func someFunction(parameterWithoutDefault: Int,parameterWithDefault: Int = 12){}
    
    //若允许函数接受可变数目参数，一下为计算平均数函数
    func arithmeticMean(_ numbers: Double...) -> Double {
        var total: Double = 0
        for number in numbers{
            total += number
        }
        return total / Double(numbers.count)
    }
    
    //默认情况下，函数参数是常量，因此若要在函数内部改变参数的值，需要使用inout关键字
    func swapTwoInts(_ a:inout Int, _ b:inout Int) {
        let temporaryA = a
        a = b
        b = temporaryA
    }
    
    //可以常量或变量定义为函数类型，并赋予函数
    func addTwoInts(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    var mathFunction: (Int, Int) -> Int = addTwoInts//没有设置init，仅演示
    
    //函数也能作为参数传入
    func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int){
        print("Result: \(mathFunction(a,b))")
    }
    
    //嵌套函数
    func chooseStepFunction(backward: Bool) -> (Int) -> Int {
        func stepForward(input: Int) -> Int { return input + 1}
        func stepBackward(input: Int) -> Int { return input - 1}
        return backward ? stepBackward : stepForward
    }
    
    
}

