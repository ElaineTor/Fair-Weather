//
//  Weather API.swift
//  FairWeatherFriend
//
//  Created by VIS Swimming on 9/6/18.
//  Copyright © 2018 TOR. All rights reserved.
//

import Foundation

struct Forecast: Codable {
    let latitute: Double
    let longitude: Double
    let timezone: String
    let currently: CurrentWeatherInfo
    let daily: DailyWeatherInfo
}

struct CurrentWeatherInfo: Codable {
    let time: Int
    let summary: String
    let temperature: Double
    let windBearing: Double
    let windSpeed: Double
    let humidity: Double
    let icon: String
}

struct DailyWeatherInfo: Codable {
    let summary: String
    let icon: String
    let data: [dailyWeatherData]
}

struct dailyWeatherData: Codable {
    let time: Int
    let icon: String
    let summary: String
    let windBearing: Double
    let windSpeed: Double
    let humidity: Double
    let temperatureHigh: Double
    let temperatureLow: Double
}

extension dailyWeatherData {
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
}
