//
//  Approach.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/5.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation

class Approach {
    class Counter {
        var count = 0
        func increment() {
            count += 1
        }
        func increment(by amount: Int) {
            count += amount
        }
        func reset() {
            count = 0
        }
    }
    
    let counter = Counter()
    
    //self参数可以用于消除歧义
    struct Point {
        var x = 0.0, y = 0.0
        func isToTheRightOf(x: Double) -> Bool {
            return self.x > x
        }
    }
    
    //在结构和枚举的实例中修改值类型属性，方法重载？,使用mutating关键字
    struct point {
        var x = 0.0, y = 0.0
        mutating func moveBy(x deltaX: Double, y deltaY: Double) {
            x += deltaX
            y += deltaY
        }
    }
    

    
    //还能这样写
    struct point_second {
        var x = 0.0, y = 0.0
        mutating func moveBy(x deltaX: Double, y deltaY: Double) {
            self = point_second(x: x + deltaX, y: y + deltaY)
        }
    }
    
    
    //画游戏等级跟踪的例子，随着玩家等级解锁，如果特定级别的编号解锁，返回这个函数，
    //@discardableResult，表示取消不使用返回值的警告
    struct LevelTracker {
        static var highestUnlockedLevel = 1
        var currentLevel = 1
        
        static func unlock(_ level: Int) {
            if level > highestUnlockedLevel { highestUnlockedLevel = level }
        }
        
        static func isUnlocked(_ level: Int) -> Bool {
            return level <= highestUnlockedLevel
        }
        
        @discardableResult
        mutating func advance(to level: Int) -> Bool {
            if LevelTracker.isUnlocked(level) {
                currentLevel = level
                return true
            } else {
                return false
            }
        }
    }
    
    // init方法，表征了类属性（玩家姓名）
    class Player {
        var tracker = LevelTracker()
        let playerName: String
        func complete(level: Int) {
            LevelTracker.unlock(level + 1)
            tracker.advance(to: level + 1)
        }
        init(name: String) {
            playerName = name
        }
    }
    

}

