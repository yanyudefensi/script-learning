//
//  main.swift
//  Jaxon-swift-learning
//
//  Created by cmb on 2019/8/2.
//  Copyright © 2019 cmb. All rights reserved.
//

import Foundation

//print("Hello, World!")

let manager = property.DataManger()
manager.data.append("Some data")
// the DataImporter instance for the importer property has not yet been created

print(manager.importer.filename)
