//
//  Location List.swift
//  FairWeatherFriend
//
//  Created by VIS Swimming on 11/6/18.
//  Copyright © 2018 TOR. All rights reserved.
//

import Foundation
import CoreLocation

struct Location: Codable {
    var locationName: String
    var countryName: String
    var longitude: Double
    var latitude: Double
    
static func loadLocations() -> [Location] {
   let location1 = Location(locationName: "Melbourne", countryName: "Australia", longitude: 144.963058, latitude: -37.813628)
   let location2 = Location(locationName: "Sydney", countryName: "Australia", longitude: 151.209296, latitude: -33.868820)
   let location3 = Location(locationName: "Sunshine Coast", countryName: "Australia", longitude: 153.066667, latitude: -26.650000)
   let location4 = Location(locationName: "Cairns", countryName: "Australia", longitude: 145.778055, latitude: -16.918551)
   let location5 = Location(locationName: "Canberra", countryName: "Australia", longitude: 149.130009, latitude: -35.280937)
   let location6 = Location(locationName: "Tokyo", countryName: "Japan", longitude: 139.691706, latitude:35.689487)
   let location7 = Location(locationName: "Singapore", countryName: "Singapore", longitude: 103.819836, latitude: 1.352083)
   let location8 = Location(locationName: "Nadi", countryName: "Fiji", longitude: 177.435623, latitude: -17.776536)
   let location9 = Location(locationName: "New York", countryName: "USA", longitude: -74.005973, latitude: 40.712775)
   let location10 = Location(locationName: "Kuala Lumpur", countryName: "Malaysia", longitude: 101.686855, latitude: 3.139003)
   let location11 = Location(locationName: "Munich", countryName: "Germany", longitude: 11.581980, latitude: 48.135125)
   let location12 = Location(locationName: "Los Angeles", countryName: "USA", longitude: -118.243685, latitude: 34.052234)
   let location13 = Location(locationName: "Reykjavik", countryName: "Iceland", longitude: -21.817439, latitude: 64.126521)
   let location14 = Location(locationName: "London", countryName: "United Kindom", longitude: -0.127758, latitude: 51.507351)
   let location15 =  Location(locationName: "Rio De Janeiro", countryName: "Brazil", longitude: -43.172896, latitude: -22.906847)
   let location16 = Location(locationName: "Beijing", countryName: "China", longitude: 116.407396, latitude: 39.904200)
   let location17 = Location(locationName: "Paris", countryName: "France", longitude: 2.352222, latitude: 48.856614)
   let location18 = Location(locationName: "Athens", countryName: "Greece", longitude: 23.727539, latitude: 37.983810)
   let location19 =  Location(locationName: "Moscow", countryName: "Russia", longitude: 37.617300, latitude: 55.755826)
   let location20 =  Location(locationName: "Johannesburg", countryName: "South Africa", longitude: 28.047305, latitude: -26.204103)
    
    return [location1, location2, location3, location4, location5, location6, location7, location8, location9, location10, location11, location12, location13, location14, location15, location16, location17, location18, location19, location20]
    }

}

//list of preloaded locations without coordinates

//var locationList: [Location] = [
//    Location(locationName: "Melbourne", countryName: "Australia"),
//    Location(locationName: "Sydney", countryName: "Australia"),
//    Location(locationName: "Sunshine Coast", countryName: "Australia"),
//    Location(locationName: "Cairns", countryName: "Australia"),
//    Location(locationName: "Canberra", countryName: "Australia"),
//    Location(locationName: "Tokyo", countryName: "Japan"),
//    Location(locationName: "Singapore", countryName: "Singapore"),
//    Location(locationName: "Nadi", countryName: "Fiji"),
//    Location(locationName: "New York", countryName: "USA"),
//    Location(locationName: "Kuala Lumpur", countryName: "Malaysia"),
//    Location(locationName: "Munich", countryName: "Germany"),
//    Location(locationName: "Los Angeles", countryName: "USA"),
//    Location(locationName: "Reykjavik", countryName: "Iceland"),
//    Location(locationName: "London", countryName: "United Kindom"),
//    Location(locationName: "Rio De Janeiro", countryName: "Brazil"),
//    Location(locationName: "Beijing", countryName: "China"),
//    Location(locationName: "Paris", countryName: "France"),
//    Location(locationName: "Athens", countryName: "Greece"),
//    Location(locationName: "Moscow", countryName: "Russia"),
//    Location(locationName: "Johannesburg", countryName: "South Africa")]

//]
//
