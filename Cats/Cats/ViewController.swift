//
//  ViewController.swift
//  Cats
//
//  Created by Michael Dippery on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var catBreeds = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateCatData()
    }
    
    func generateCatData() {
        catBreeds = ["Aegean",
                     "Alpine Lynx",
                     "American Lynx",
                     "American Polydactyl",
                     "Australian Tiffanie",
                     "Bramble",
                     "Burmilla Longhair (Tiffanie)",
                     "Classicat (Jungala)",
                     "Desert Lynx",
                     "Dwelf",
                     "Foldex cat",
                     "Genetta",
                     "Highlander (Highland Lynx)",
                     "Jungle",
                     "Jungle Curl",
                     "Kucing Malaysia (Piawaian Kucing Malaysia)",
                     "Lambkin (Nanus Rex)",
                     "Mandalay",
                     "Minuet (Napoleon)",
                     "Mojave Spotted",
                     "Owyhee Bob",
                     "Pantherette",
                     "Pudelkatze (Poodlecat)",
                     "Punjabi (Punjabi Desert Cat)",
                     "Russian Shorthair",
                     "Safari",
                     "Seltic",
                     "Skookum",
                     "St. Helens",
                     "Stone Cougar",
                     "Tasman Manx"]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catBreeds.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "KittyCell", for: indexPath)
        cell.textLabel!.text = catBreeds[indexPath.row]
        return cell
    }
    
}
