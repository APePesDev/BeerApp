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
   // let beerCarousel = BeerCarousel()
    var beerCarousel: [Beer]? {
        didSet {
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "BeerTableViewCell", bundle: nil), forCellReuseIdentifier: "beerCell")
        loadBeer()
        // Do any additional setup after loading the view.
    }

    func loadBeer() {
        BeerService.shared.all{ [weak self] beers in
            DispatchQueue.main.async {
                self?.beerCarousel = beers
            }
        }
        print(beerCarousel)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beerCarousel?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "beerCell", for: indexPath) as? BeerTableViewCell else {
            fatalError("Could not dequeue a cell")
        }
       let beer = self.beerCarousel![indexPath.row]
        cell.beerNameLabel.text = beer.name
        cell.originLabel.text = beer.description
        cell.beerImage.image = UIImage(named: "beerF")
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
            let beer = self.beerCarousel![indexPath.row]
            beerDetailViewController.beerdetail = beer
        }
    }

}
