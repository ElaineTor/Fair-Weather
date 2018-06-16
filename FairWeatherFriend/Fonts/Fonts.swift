//
//  Fonts.swift
//  FairWeatherFriend
//
//  Created by VIS Swimming on 13/6/18.
//  Copyright © 2018 TOR. All rights reserved.
//

import Foundation

struct WeatherFonts: Codable {
    var darkSkyIcon: String
    var weatherIcon: String
    
    static func LoadFonts() -> [WeatherFonts] {
        let clearDay = WeatherFonts(darkSkyIcon: "clear_day", weatherIcon: "\u{f00d}")
        let clearNight = WeatherFonts(darkSkyIcon: "clear_night", weatherIcon: "\u{f07e}")
        let partlyCloudyNight = WeatherFonts(darkSkyIcon: "partly_cloudy_night", weatherIcon: "\u{f086}")
        let cloudy = WeatherFonts(darkSkyIcon: "cloudy", weatherIcon: "\u{f002}")
        let rain = WeatherFonts(darkSkyIcon: "rain", weatherIcon: "\u{f008}")
        let sleet = WeatherFonts(darkSkyIcon: "sleet", weatherIcon: "\u{f0b4}")
        let snow = WeatherFonts(darkSkyIcon: "snow", weatherIcon: "\u{f02a}")
        let wind = WeatherFonts(darkSkyIcon: "wind", weatherIcon: "\u{f085}")
        let fog = WeatherFonts(darkSkyIcon: "fog", weatherIcon: "\u{f04a}")
        
        return[clearDay,clearNight,partlyCloudyNight,cloudy, rain, sleet, snow, wind, fog]
    }
}

