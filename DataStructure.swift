//
//  File.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/2.
//  Copyright © 2019 cmb. All rights reserved.
//

// 注：此处部分代码只能在主函数运行,供学习举例使用，未将其封装为方法。import Foundation

class DataStructure{
    //1数组
    var someints = [Int]()
    
    //添加元素
    someints.append(3)
    someints += [4]
    
    //有默认值和重复次数的数组
    var threedoubles = Array(repeating: 0.0, count: 3)
    
    //替换数组中的元素
    shoppinglist[4...6] = ["bananas","apples"]
    
    //按索引值插入元素
    shoppinglist("maple syrup", at: 0)
    
    //删除元素
    firstItem = shoppinglist.remove(at: 0)
    
    //同理数组元素可以遍历
    for item in shoppingList {
    print(item)
    }
    // Six eggs
    // Milk
    // Flour
    // Baking Powder
    // Bananas
    
    //构建迭代器遍历
    for (index, value) in shoppinglist.enumerated() {
    print("item \(index + 1): \(value)")
    }
    
    // Item 1: Six eggs
    // Item 2: Milk
    // Item 3: Flour
    // Item 4: Baking Powder
    // Item 5: Bananas
    
    //2set集合，当元素的顺序和出现次数不重要时
    var favor:Set<String> = ["Rock","Classical"]
    //插入元素
    favor.insert("Jazz")
    
    //检查集合是否包含元素
    if favor.contains("Funk") {
    print("yes it is")
    } else {
    print("no it is not")
    }
    
    //一些交并补运算
    let oddDigits: Set = [1, 3, 5, 7, 9]
    let evenDigits: Set = [0, 2, 4, 6, 8]
    let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
    
    oddDigits.union(evenDigits).sorted()
    // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    oddDigits.intersection(evenDigits).sorted()
    // []
    oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
    // [1, 9]
    oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
    // [1, 2, 9]
    
    
    //3字典
    var namesofintegers = [Int: String]()
    
    //添加修改键值
    airports["LHR“] = ”London“
    
    if let oldvalue = airports.updateValue("dublin airport", forKey:"dub") {
    print("the name of it is \(oldvalue)")
    }
    //removeValue同理
    //还可以通过设置nil来删除实际值
    airports["dub"] = nil
    //迭代字典
    for （key，value）in airports {
    print("\(key): \(value)")
    
    for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
    }
    // Airport code: LHR
    // Airport code: YYZ
    
    for airportName in airports.values {
    print("Airport name: \(airportName)")
    }
    // Airport name: London Heathrow
    // Airport name: Toronto Pearson    }
    //还能够单独访问字典键值
    
}

// Prints "Rock? I'm over it."}
