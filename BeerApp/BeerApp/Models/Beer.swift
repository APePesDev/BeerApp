//
//  Beer.swift
//  BeerApp
//
//  Created by Angel Sandoval on 20/10/18.
//  Copyright © 2018 ACL. All rights reserved.
//

import Foundation

struct Beer: Codable{
    var category: Int
    var name: String
    var description: String
    var meta: String
}


let beer1 = Beer(category: 1, name: "Cerveza1", description: "La mas rica", meta: "jsonb")
let beer2 = Beer(category: 1, name: "Cerveza2", description: "La mas rica", meta: "jsonb")
let beer3 = Beer(category: 1, name: "Cerveza1", description: "La mas rica", meta: "jsonb")
let beer4 = Beer(category: 1, name: "Cerveza2", description: "La mas rica", meta: "jsonb")

var beers = [beer1, beer2, beer3, beer4]



/*
struct Variant {
    var cost_cents: Double
    var name: String
    var volume: Double
    var volume_units: Double
    var names:[Beer]
}

struct Inventory {
    var total: String
    
}*/
