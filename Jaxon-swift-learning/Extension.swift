//
//  Extension.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/13.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation

//extension可以在不改变容器的前提下给容器增加功能
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let center_Rect = Rect(center: Point(x: 4.0, y: 4.0),
                      size: Size(width: 3.0, height: 3.0))
// center_Rect's origin is (2.5, 2.5) and its size is (3.0, 3.0)
