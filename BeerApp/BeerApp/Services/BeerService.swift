//
//  BeerService.swift
//  BeerApp
//
//  Created by Angel Sandoval on 27/10/18.
//  Copyright © 2018 ACL. All rights reserved.
//

import Foundation
struct BeerService {
    static let shared = BeerService()
    
    let client = Client(baseURLComponents: URLComponents(string: "https://opentab.herokuapp.com")!)
    
    let jsonDecoder = JSONDecoder()
    
   /* func all() -> [Beer] {
        let decoder = JSONDecoder()
        let result = try? decoder.decode([Beer].self, from: DataSource().fishes)
        return result ?? []
    }
 */
    
    func all(_ completion: @escaping ([Beer]) -> Void) {
        client.get(path: "/api/v1/business/1/beers") { data in
            guard let jsonData = data else { return }
            let result = try? self.jsonDecoder.decode([Beer].self, from: jsonData)
            completion(result ?? [Beer]())
        }
    }
}
