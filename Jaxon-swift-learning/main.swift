//
//  main.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/2.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation

//Foundation部分
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
var convertedNumber: String?
// surveyAnswer is automatically set to nil
if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
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
//assert(age >= 0, "a person's age can not be less than zero") #在主函数就不运行了

//字符串连接
print("hello,"+"world")

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


//字符串插入和删除，一般通过定点索引完成插入或者是删除操作，貌似删除可以指定范围
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome now equals "hello!"}

welcome.remove(at: welcome.index(before: welcome.endIndex))

//获取子字符串
let greeting = "hello, world"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
print(beginning)
// 得到了hello


//DataStructure部分
//添加元素
var someints = [Int]()
someints.append(3)
someints += [4]
print(someints)


//有默认值和重复次数的数组
var threedoubles = Array(repeating: 0.0, count: 3)
print(threedoubles)

//替换数组中的元素
var shoppingList = ["Eggs", "Milk"]

//按索引值插入元素
shoppingList.insert("Maple Syrup", at: 0)
//删除元素
shoppingList.remove(at: 0)

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
for (index, value) in shoppingList.enumerated() {
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

print(oddDigits.union(evenDigits).sorted())
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
print(oddDigits.intersection(evenDigits).sorted())
// []
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
// [1, 9]
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())
// [1, 2, 9]


//字典
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
//添加修改键值
airports["LHR"] = "London"

//更新键值，同时有一个变量存储旧值
if let oldvalue = airports.updateValue("dublin airport", forKey:"dub") {
    print("the name of it is \(oldvalue)")
}
//removeValue同理
//还可以通过设置nil来删除实际值
airports["dub"] = nil
//迭代字典
for (key, value) in airports {
    print("\(key): \(value)")
}

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

//ControlFlow控制流部分
let mynames = ["Anna", "Alex", "Brian", "Jack"]
for name in mynames {
    print("Hello, \(name)!")
}

//for- in 循环支持键值遍历
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}
// cats have 4 legs
// ants have 6 legs
// spiders have 8 legs

//如果不需要序列中的每个值，可以使用下划线来代替变量名忽略值
let base = 3
let power = 10
var answer = 1
for _ in 1...10 {
    answer *= base
}

//设置步长，stride（from：to：by：）,当使用from。。through时，即闭区间
let minutes = 60
let minuterinterval = 5
for tickmark in stride(from: 0, to: minutes, by: minuterinterval)
{
    print(tickmark)
}

//while循环，repeat的区别是先执行一次循环体条件再进行条件判断

//while condition {
//    statements
//}

//repeat {
//    statements
//} while condition

//多个if条件句拼接，可用于捕获错误，但switch语句可能更加适合
let temperatureInFahrenheit = 90
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
let somePoint = (1, 1)
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
}
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
}
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

let controlfow = ControlFlow()
controlfow.greet(person: ["name": "John"])
// Prints "Hello John!"
// Prints "I hope the weather is nice near you."
controlfow.greet(person: ["name": "Jane", "location": "Cupertino"])
// Prints "Hello Jane!"
// Prints "I hope the weather is nice in Cupertino."

//Function部分

//Closure部分
//排序闭包介绍，下面是未使用闭包的例子
let new_names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reverserdNames_first = new_names.sorted(by: backward) //举例用

//使用闭包语法可以简化代码
var reversedNames_second = new_names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )

//甚至可以将变量类型交由系统判断
var reversedNames_third = names.sorted(by: {s1, s2 in return s1 > s2})

var reversedNames_fourth = names.sorted(by: { s1, s2 in s1 > s2 } )


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

//此示例设置一个常量incrementByTen，该常量调用以引用每次调用时添加10到其runningTotal变量的增量函数。多次调用该函数会显示此行为
let increment = Closure()
let incrementByTen = increment.makeIncrementer(forIncrement: 10)

incrementByTen()
// returns a value of 10
incrementByTen()
// returns a value of 20
incrementByTen()
// returns a value of 30


//enumerate部分
var productBarcode = my_enumerate.Barcode.upc(8, 85909, 51226, 3)

//可以用变量或常量承接枚举值
switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}
// Prints "QR code: ABCDEFGHIJKLMNOP."
switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
    print("QR code: \(productCode).")
}

//递归枚举，给出一个存储简单算术表达式的枚举,indrect指示递归
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
//    let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

//StructureAndClass部分
let someResolution = StructureAndClass.Resolution()
let someVideoMode = StructureAndClass.VideoMode()

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
let hd = StructureAndClass.Resolution(width: 1920, height: 1080)
var cinema = hd
//例如cinema 和 hd 被分配到两个独立的内存地址中

//property部分
let manager = property.DataManger()
manager.data.append("Some data")

var square = property.Rect(origin: property.Point(x: 0.0, y: 0.0), size: property.Size(width: 10.0, height: 10.0))
//重设正方体中心
square.center = property.Point(x: 15.0, y: 15.0)
//输出正方体的边缘
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// Prints "square.origin is now at (10.0, 10.0)"，这里不是很确定能不能直接定位到origin

let fourByFiveByTwo = property.Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")
// Prints "the volume of fourByFiveByTwo is 40.0"

let stepCounter = property.StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
var leftChannel = property.AudioChannel()
var rightChannel = property.AudioChannel()

rightChannel.currentLevel = 11
print(rightChannel.currentLevel)
// Prints "10"

//Approach部分
var SomePoint = Approach.point(x: 1.0, y: 1.0)
SomePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(SomePoint.x), \(SomePoint.y))")
//解锁了2关卡
var player = Approach.Player(name: "Argyrios")
player.complete(level: 1)
print("highest unlocked level is now \(Approach.LevelTracker.highestUnlockedLevel)")
// Prints "highest unlocked level is now 2"

//没有调用complete方法调用LevelTracker结构unlock方法，因此advacne方法return false
var player_second = Approach.Player(name: "Beto")
if player_second.tracker.advance(to: 6) {
    print("player is now on level 6")
} else {
    print("level 6 has not yet been unlocked")
    // Prints "level 6 has not yet been unlocked"}
}

//Subscript部分
let threeTimesTable = Subscript.TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")
// Print "six times three is 18"

//构造新实例
var matrix = Subscript.Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2

//Hritage部分
let bicycle = Hritage.Bicycle()
bicycle.hasBasket = true

bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")
// Bicycle: traveling at 15.0 miles per hour

let automatic = Hritage.AutomaticCar()
automatic.currentSpeed = 35.0
print("Automatic：\(automatic.description)")

//final关键字可用于防止方法被覆盖

//Initalizaion部分
var f = Initialization.Fahrenheit()
print("The default temperature is \(f.temperatrue)")

let boilingPointOfWater = Initialization.Celsius(fromFahrenheit: 212.0)
print("FromFahrenheit temperature is \(boilingPointOfWater.temperatureInCelsius)")
// boilingPointOfWater.temperatureInCelsius is 100.0

let freezingPointOfWater = Initialization.Celsius(fromKelvin: 273.15)
print("freezingPointOfWatertemperature is \(freezingPointOfWater.temperatureInCelsius)")
// freezingPointOfWater.temperatureInCelsius is 0.0

let magenta = Initialization.Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Initialization.Color(white: 0.5)
print(magenta.red, magenta.green, magenta.blue)
print(halfGray.red, halfGray.green, halfGray.blue)

//主函数编写
let basicRect = Initialization.Rect()
print("basicRect's origin is \(basicRect.origin) and its size is \(basicRect.origin)")
// basicRect's origin is (0.0, 0.0) and its size is (0.0, 0.0)

let originRect = Initialization.Rect(origin: Initialization.Point(x: 2.0, y: 2.0), size: Initialization.Size(width: 5.0, height: 5.0))
print("originRect's origin is \(originRect.origin) and its size is \(originRect.origin)")
// originRect's origin is (2.0, 2.0) and its size is (5.0, 5.0)

let centerRect = Initialization.Rect(center: Initialization.Point(x: 4.0, y: 4.0),
                      size: Initialization.Size(width: 3.0, height: 3.0))
print("centerRect's origin is \(centerRect.origin) and its size is \(centerRect.origin)")
// centerRect's origin is (2.5, 2.5) and its size is (3.0, 3.0)

//主函数编写
let vehicle = Initialization.Vehicle()
print("Vehicle: \(vehicle.description)")
// Vehicle: 0 wheel(s)
let bicycle_new = Initialization.Bicycle()
print("Bicycle: \(bicycle_new.description)")
// Bicycle: 2 wheel(s)

let namedMeat = Initialization.Food(name: "Bacon")
print("namedMeat's name is \(namedMeat.name)")
// namedMeat's name is "Bacon"

let mysteryMeat = Initialization.Food()
print("mysteryMeat's name is \(mysteryMeat.name)")
// mysteryMeat's name is "[Unnamed]"

//Optional Link可选链接部分
let john = Person()

//因为person中residence没有设置值，强制解包会报错
//let roomCount = john.residence!.numberOfRooms
// this triggers a runtime error

//应设置
if let rommCount = john.residence?.numberOfRooms {
    print("John's residence has \(rommCount) rooms")
} else {
    print("Unable to retrieve the number of rooms.")
}


//Mistake Dispose部分
//使用do catch捕获错误
var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8
do {
    try vendingMachine.buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
    print("Success! Yum.")
} catch VendingMachineError.invalidSelection {
    print("Invalid Selection.")
} catch VendingMachineError.outOfStock {
    print("Out of Stock.")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
} catch {
    print("Unexpected error: \(error).")
}
// Prints "Insufficient funds. Please insert an additional 2 coins."
