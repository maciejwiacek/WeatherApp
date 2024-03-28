//
//  ContentView.swift
//  WeatherApp
//
//  Created by Maciej Wiącek on 28/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var weatherModel = WeatherModel(weather: [WeatherModel.Weather(main: "", icon: "")], main: WeatherModel.Main(temp: 0, tempMin: 0, tempMax: 0, pressure: 0), name: "")
    
    var body: some View {
        VStack {
            Text(weatherModel.weather[0].main)
            Text(String(format: "%.1f°C", weatherModel.tempInCelsius))
            Text(weatherModel.name)
            AsyncImage(url: weatherModel.imageURL) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                default:
                    ProgressView()
                }
            }
            .frame(width: 200, height: 200)
        }
        .task {
            do {
                weatherModel = try await WeatherData().getData()
            } catch {
                print(error)
            }
        }
    }
    
}

#Preview {
    ContentView()
}
