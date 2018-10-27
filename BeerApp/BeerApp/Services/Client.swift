//
//  Client.swift
//  BeerApp
//
//  Created by Luis Ernesto Ochoa Ríos on 27/10/18.
//  Copyright © 2018 ACL. All rights reserved.
//

import Foundation

//
//func request(_ method: String, path: String, body: Data?, successHandler: dataHandler?) {
//    var requestURLComponents = baseURLComponents
//    requestURLComponents.path = path
//    var request = URLRequest(url: requestURLComponents.url!)
//    request.httpMethod = method
//    request.httpBody = body
//    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
//        if error != nil { return }
//        let httpResponse = response as! HTTPURLResponse
//        if httpResponse.statusCode == 200, let handler = successHandler {
//            handler(data)
//        }
//    }
//    task.resume()
//}



//
//  ViewController.swift
//  Networking
//
//  Created by Luis Ernesto Ochoa Rios on 10/7/18.
//  Copyright © 2018 Luis Ernesto Ochoa Rios. All rights reserved.
//

import UIKit

let startOffUrl : String = "https://opentab.herokuapp.com"
    
func getBeer(){
    guard let urlTwo = URL(string: "\(startOffUrl)/api/v1/business/1/beers") else { return }
    var request = URLRequest(url: urlTwo) //60 second by standard
    //Pasamo el metodo
    request.httpMethod = "GET"
    request.addValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        
    let session = URLSession.shared.dataTask(with: request) { (data, response, error) in
        if error != nil { return }
        if let data = data {
            do{
                let decoder : JSONDecoder = JSONDecoder()
                let jsonRes = try decoder.decode(Beer.self, from: data)
                
                jsonRes
                
                    
            }catch{
                    print("You got the following error: \(error)")
            }
        }
    }
    session.resume()
}



















