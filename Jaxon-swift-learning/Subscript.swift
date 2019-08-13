//
//  Subscript.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/6.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation

class Subscript {
    //下标语法
    struct TimesTable {
        let multiplier: Int
        subscript(index: Int) -> Int {
            return multiplier * index
        }
    }
    

    
    //设置矩阵结构
    struct Matrix {
        let rows: Int, columns: Int
        var grid: [Double]
        
        //初始化类属性
        init(rows: Int, columns: Int) {
            self.rows = rows
            self.columns = columns
            grid = Array(repeating: 0.0, count: rows * columns)
        }
        func indexIsValid(row: Int, column: Int) -> Bool {
            return rows >= 0 && row < rows && column >= 0 && column < columns
        }
        subscript(row: Int, column: Int) -> Double {
            get {
                assert(indexIsValid(row: row, column: column),"Index out of range")
                return grid[(row * columns) + column]
            }
            set {
                assert(indexIsValid(row: row, column: column),"Index out of range")
                grid[(row * columns) + column] = newValue
            }
        }
    }
    
}
