//
//  WeatherAPI.swift
//  FairWeatherFriend
//
//  Created by VIS Swimming on 11/6/18.
//  Copyright © 2018 TOR. All rights reserved.
//

import Foundation

let melbourne = Location.loadLocations()[0]
let sydney = Location.loadLocations()[1]
let sunshineCoast = Location.loadLocations()[2]
let cairns = Location.loadLocations()[3]
let canberra = Location.loadLocations()[4]
let tokyo = Location.loadLocations()[5]
let singapore = Location.loadLocations()[6]
let nadi = Location.loadLocations()[7]
let newyork = Location.loadLocations()[8]
let kualaLumpur = Location.loadLocations()[9]
let munich = Location.loadLocations()[10]
let losAngeles = Location.loadLocations()[11]
let reykjavik = Location.loadLocations()[12]
let london = Location.loadLocations()[13]
let rio = Location.loadLocations()[14]
let beijing = Location.loadLocations()[15]
let paris = Location.loadLocations()[16]
let athens = Location.loadLocations()[17]
let moscow = Location.loadLocations()[18]
let johannesburg = Location.loadLocations()[19]


extension URL {
    func withCoodinates(at location: Location) -> URL? {
        var url = self
        url = url.appendingPathComponent("\(location.latitude), \(location.longitude)")
        return url
    }
}

struct ForecastController {
    
    func fetchForecast (at location: Location, matching query: [String: String], completion: @escaping (Forecast?) -> Void) {
        
        let baseURL = URL(string: "https://api.darksky.net/forecast/37e6411c31f8e871d662e68c6c058a40/")
        
        guard let locationURL = baseURL?.withCoodinates(at: location) else {
            completion(nil)
            print("Could not set user location")
            return
        }
        
        let task = URLSession.shared.dataTask(with: locationURL) { (data, response, error) in
            let decoder = JSONDecoder()
            if let data = data, let forecast = try? decoder.decode(Forecast.self, from: data) {
                completion(forecast)
            }
        }
        task.resume()
    }
}
