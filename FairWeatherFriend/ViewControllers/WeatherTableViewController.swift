//
//  WeatherTableViewController.swift
//  FairWeatherFriend
//
//  Created by VIS Swimming on 11/6/18.
//  Copyright © 2018 TOR. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherTableViewController: UITableViewController {
    
    
    var locations = [Location]()
    
    override func viewDidLoad() {
    super.viewDidLoad()
     locations = Location.loadLocations()
    
    }

    @IBAction func unwindWeatherView(segue:
        UIStoryboardSegue) {
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return locations.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell") else {
            fatalError("Count not dequeue a cell")
        }
        
        let location = locations[indexPath.row]
        
        cell.textLabel?.text = location.locationName
        cell.detailTextLabel?.text = location.countryName
       

        return cell
    }

}
