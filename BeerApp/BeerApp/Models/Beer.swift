//
//  Beer.swift
//  BeerApp
//
//  Created by Angel Sandoval on 20/10/18.
//  Copyright © 2018 ACL. All rights reserved.
//

import Foundation

struct Beer: Codable {
    let id : Int?
    let businessId : Int?
    let name : String?
    let description : String?
    let category : String?
    let type : String?
    let abv : String?
    let ibu : String?
    let organic : Bool?
    let styleName : String?
    let labelUrl : String?
    let createdAt : String?
    let updatedAt : String?
    
    enum CodingKeys: String, CodingKey {
        
        case id = "id"
        case businessId = "business_id"
        case name = "name"
        case description = "description"
        case category = "category"
        case type = "type"
        case abv = "abv"
        case ibu = "ibu"
        case organic = "organic"
        case styleName = "style_name"
        case labelUrl = "label_url"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
    
    init(id: Int, businessId: Int, name: String, description: String,category: String, type: String, abv: String, ibu: String, organic: Bool, styleName: String, labelUrl: String, createdAt: String, updatedAt: String ) {
        self.id = id
        self.businessId = businessId
        self.name = name
        self.description = description
        self.category = category
        self.type = type
        self.abv = abv
        self.ibu = ibu
        self.organic = organic
        self.styleName = styleName
        self.labelUrl = labelUrl
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}
