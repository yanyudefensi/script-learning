//
//  Optional Link.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/13.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation


class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

//设置可选连接可以降低类实例化报错的可能性
class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }        
    }
}
