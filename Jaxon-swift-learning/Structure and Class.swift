//
//  Structure and Class.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/5.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation
class StructureAndClass {
    struct Resolution {
        var width = 0
        var height = 0
    }
    
    class VideoMode {
        var resolution = Resolution()
        var interlaced = false
        var frameRate = 0.0
        var name: String?
    }
    
    let someResolution = Resolution()
    let someVideoMode = VideoMode()
    

}


