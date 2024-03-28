//
//  WeatherFetching.swift
//  WeatherApp
//
//  Created by Maciej Wiącek on 28/03/2024.
//

import Foundation

struct WeatherData {
    func getData() async throws -> WeatherModel {
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=52.170471&lon=20.811886&appid=4dd1d6c50da5c5c1e157745768dff777")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let result = try decoder.decode(WeatherModel.self, from: data)
        return result
    }
}
