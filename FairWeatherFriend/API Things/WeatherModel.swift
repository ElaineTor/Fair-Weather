//
//  Weather API.swift
//  FairWeatherFriend
//
//  Created by VIS Swimming on 9/6/18.
//  Copyright © 2018 TOR. All rights reserved.
//

import Foundation

struct Forecast: Codable {
    var latitute: Double
    var longitude: Double
    var timezone: String
    var currently: CurrentWeatherInfo
    var hourly: HourlyWeatherInfo
    var daily: DailyWeatherInfo
}

struct CurrentWeatherInfo: Codable {
    var time: Int
    var summary: String
    var temperature: Double
    var windBearing: Double
    var windSpeed: Double
    var humidity: Double
    var icon: String
}

struct HourlyWeatherInfo: Codable {
    var summary: String
    var icon: String
    var data: [hourlyWeatherData]
}

struct DailyWeatherInfo: Codable {
    var summary: String
    var icon: String
    var data: [dailyWeatherData]
}

struct hourlyWeatherData: Codable {
    var time: Int
    var icon: String
    var summary: String
    var windBearing: Double
    var windSpeed: Double
    var humidity: Double
    var temperature: Double
}

struct dailyWeatherData: Codable {
    var time: Int
    var icon: String
    var summary: String
    var windBearing: Double
    var windSpeed: Double
    var humidity: Double
    var temperature: Double
}
