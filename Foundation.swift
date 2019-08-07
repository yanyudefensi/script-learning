//
//  File.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/2.
//  Copyright © 2019 cmb. All rights reserved.
//

// 注：此处部分代码只能在主函数运行,供学习举例使用，未将其封装为方法。
import Foundation

class Foundation{
    //常量、变量
    let jaxon = 10
    var jack = "你好"
    
    //可以提前声明变量类型
    
    let new: Int = 10
    
    //布尔值
    
    let orange = true
    
    if orange {
    print("you have an orange juice");
    } else {
    print("you do not have an orange");
    }
    
    //元组
    let http404error = (404,"not found");
    
    //打印出变量
    print("this state is \(http404error)")
    
    //强制解包
    if orange != nil {
    print("you have an orange juice");
    }
    
    //可能存在两种值的变量,避免初始值失败
    var nowable: Int? = 404
    
    //处理错误
    func catchtheproblem()  throws {
    };
    
    do {
    try catchtheproblem()
    //no error was thrown
    } catch {
    // an error was thrown
    }
    
    //断言
    let age = -3
    assert(age >= 0, "a person's age can not be less than zero")
    
    //字符串连接
    "hello,"+"world"
    
    //三元运算符
    let contentHeight = 40
    let hasHeader = true
    let rowHeight = contentHeight + (hasHeader ? 50 : 20)
    // rowHeight is equal to 90
    
    //for in 循环
    for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
    }
    
    //计数器帮助读取数组中元素
    let names = ["Anna", "Alex", "Brian", "Jack"]
    let count = names.count
    for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
    }
    
    //类似python中的切片操作
    for name in names[2...] {
    print(name)
    }
    // Brian
    // Jack
    
    //&&与，||或
    //字符串有两种方式
    var emptystring = ""
    var anotheremptystring = String()
    
    //字符串插值
    let multiplier = 3
    let message = "\(multiplier) times 2 is \(Double(multiplier) * 2)"
    
    //使用该indices属性可以访问字符串中单个字符的所有索引
    for index in greeting.indices {
    print("\(greeting[index])",terminator:"")
    }
    
    //字符串插入和删除，一般通过定点索引完成插入或者是删除操作，貌似删除可以指定范围
    var welcome = "hello"
    welcome.insert("!", at: welcome.endIndex)
    // welcome now equals "hello!"}
    
    welcome.remove(at: welcome.index(before: welcome.endIndex))
    
    //获取子字符串
    let greeting = "hello, world"
    let index = greeting.firstIndex(of: ",")?? greeting.endIndex
    let beginning = greeting[..<index]
    // 得到了hello
    
}
