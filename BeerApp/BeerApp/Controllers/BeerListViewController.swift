//
//  BeerListViewController.swift
//  BeerApp
//
//  Created by Rodriguez Isaac on 10/20/18.
//  Copyright © 2018 ACL. All rights reserved.
//

import UIKit

class BeerListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    //var beers = [Beer]()
    var beer : Beer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =
            tableView.dequeueReusableCell(withIdentifier:
                "beer") as? BeerTableViewCell else {
                    fatalError("Could not dequeue a cell")
        }
        
        let beer = beers[indexPath.row]
        cell.textLabel?.text = beer.name
        //cell.titleLabel?.text = beer.name
        // = beer.description
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
