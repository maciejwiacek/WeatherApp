//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Maciej Wiącek on 28/03/2024.
//

import Foundation

struct WeatherModel: Codable {
    struct Weather: Codable {
        let main: String
        let icon: String
    }
    
    struct Main: Codable {
        let temp: Double
        let tempMin: Double
        let tempMax: Double
        let pressure: Double
    }
    
    let weather: [Weather]
    let main: Main
    let name: String
    
    var tempInCelsius: Double {
        return main.temp - 273.15
    }
    var tempMinInCelsius: Double {
        return main.tempMin - 273.15
    }
    var tempMaxInCelsius: Double {
        return main.tempMax - 273.15
    }
    var imageURL: URL {
        let url = URL(string: "https://openweathermap.org/img/wn/\(weather[0].icon)@4x.png")!
        return url
    }
}
