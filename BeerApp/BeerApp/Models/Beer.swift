//
//  Beer.swift
//  BeerApp
//
//  Created by Angel Sandoval on 20/10/18.
//  Copyright © 2018 ACL. All rights reserved.
//

import Foundation

struct Beer: Codable {
    var category: Int
    var name: String
    var description: String
    var meta: String
    var imageName: String
    
    init(category: Int, name: String, description: String, meta: String, imageName: String) {
        self.category = category
        self.name = name
        self.description = description
        self.meta = meta
        self.imageName = imageName
    }
}
