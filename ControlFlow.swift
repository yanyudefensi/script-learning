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
    let names = ["Anna", "Alex", "Brian", "Jack"]
    for name in names {
    print("Hello, \(name)!")
    }
    // Hello, Anna!
    // Hello, Alex!
    // Hello, Brian!
    // Hello, Jack!}
    
    //for- in 循环支持键值遍历
    
    let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
    for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
    }
    // cats have 4 legs
    // ants have 6 legs
    // spiders have 8 legs
    
    //如果不需要序列中的每个值，可以使用下划线来代替变量名忽略值
    for _ in 1...10 {
    answer *= base
    }
    
    //设置步长，stride（from：to：by：）,当使用from。。through时，即闭区间
    let minutes = 60
    let minuterinterval = 5
    for tickmark in stride（from: 0, to: minutes, by: minuterinterval) {
    print(tickmark)
    }
    
    //while循环，repeat的区别是先执行一次循环体条件再进行条件判断
    while condition {
    statements
    }
    
    repeat {
    statements
    } while condition
    
    //多个if条件句拼接，可用于捕获错误，但switch语句可能更加适合
    temperatureInFahrenheit = 90
    if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
    } else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
    } else {
    print("It's not that cold. Wear a t-shirt.")
    }
    // Prints "It's really warm. Don't forget to wear sunscreen."
    
    //switch语句
    let someCharacter: Character = "z"
    switch someCharacter {
    case "a":
    print("The first letter of the alphabet")
    case "z":
    print("The last letter of the alphabet")
    default:
    print("Some other character")
    }
    
    //元组同样可用于switch语句
    let somePoint = （1，1）
    switch somePoint {
    case (0,0):
    print("\(somePoint) is at the origin")
    case (_,0):
    print("\(somePoint) is on the x-axis")
    case (0,_):
    print("\(somePoint) is on the y-axis")
    case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
    default:
    print("\(somePoint) is outside of the box")
    }
    
    //switch的值绑定,还能通过where增加判断条件
    let anotherPoint = (2,0)
    switch anotherPoint {
    case (let x,0):
    print("on the x-axis with an x value of \(x)")
    case (0,let y):
    print("on the y-axis with a y value of \(y)")
    case let (x, y):
    print("somewhere else at (\(x), \(y))")
    }
    
    let yetAnotherPoint = (1, -1)
    switch yetAnotherPoint {
    case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
    case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
    case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
    
    //continue跳出本次循环，进入到下一次循环；break结束循环
    
    let numberSymbol: Character = "三"  // Chinese symbol for the number 3
    var possibleIntegerValue: Int?
    switch numberSymbol {
    case "1", "١", "一", "๑":
    possibleIntegerValue = 1
    case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
    case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
    case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
    default:
    break
    }
    //这里的else意思是如果possbileIntegerValue是nil的话，直接输出
    if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
    } else {
    print("An integer value could not be found for \(numberSymbol).")
    // Prints "The integer value of 三 is 3."}
    
    //需要注意，switch语句在swift中不会全部执行完，一旦达到合适的条件就会终止执行，要继续的话加fallthrough关键字
    let integerToDescribe = 5
    var description = "The number \(integerToDescribe) is"
    switch integerToDescribe {
    case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
    default:
    description += " an integer."
    }
    print(description)
    // Prints "The number 5 is a prime number, and also an integer."
    
    //guard语句和if语句相似，gurad语句呀求条件必须为true才能guard执行语句后的代码
    func greet(person: [String:String]) {
    gurad let name = person["name"] else {
    return
    }
    print("hello \(name)")
    
    gurad let location = person["location"] else {
    print("I hope the weather is nice near you")
    return
    }
    print("I hope the weather is nice in \(location).")
    
    }
    
    //检查api可用性
    if #available(iOs 10, macOS 10.12, *) {
    
    }else{
    
    }
    
    
}
