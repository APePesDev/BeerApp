//
//  BeerListViewController.swift
//  BeerApp
//
//  Created by Rodriguez Isaac on 10/20/18.
//  Copyright © 2018 ACL. All rights reserved.
//

import UIKit

class BeerListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    let beerCarousel = BeerCarousel()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "BeerTableViewCell", bundle: nil), forCellReuseIdentifier: "beerCell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beerCarousel.beers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "beerCell", for: indexPath) as? BeerTableViewCell else {
            fatalError("Could not dequeue a cell")
        }
       let beer = self.beerCarousel.beers[indexPath.row]
        cell.beerNameLabel.text = beer.name
        cell.originLabel.text = beer.description
        cell.beerImage.image = UIImage(named: beer.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail"{
            let beerDetailViewController = segue.destination as! BeerDetailViewController
            let indexPath = tableView.indexPathForSelectedRow!
            let beer = self.beerCarousel.beers[indexPath.row]
            beerDetailViewController.beerdetail = beer
        }
    }

}
