//
//  WeatherAPI.swift
//  FairWeatherFriend
//
//  Created by VIS Swimming on 11/6/18.
//  Copyright © 2018 TOR. All rights reserved.
//

import Foundation
import CoreLocation


let basePath = "https://api.darksky.net/forecast/37e6411c31f8e871d662e68c6c058a40/"

func fetchforecast (withLocation location:CLLocationCoordinate2D, completion: @escaping ([Forecast]?) -> ()) {
    
    let url = basePath + "\(location.latitude),\(location.longitude)"
    let request = URLRequest(url: URL(string: url)!)
    
    let task = URLSession.shared.dataTask(with: request) { (data:Data?, response:URLResponse?, error:Error?) in
        
        var forecastArray:[Forecast] = []
        
        if let data = data {
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] {
                    if let dailyForecasts = json["daily"] as? [String:Any] {
                        if let dailyData = dailyForecasts["data"] as? [[String:Any]] {
                            for dataPoint in dailyData {
                                if let weatherObject = try? Forecast(from: dataPoint as! Decoder) {
                                    forecastArray.append(weatherObject)
                                }
                            }
                        }
                    }
                    
                }
            }catch {
                print(error.localizedDescription)
            }
            
            completion(forecastArray)
            
        }
        
        
    }
    
    task.resume()
    
    }

