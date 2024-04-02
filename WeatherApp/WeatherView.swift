//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Maciej Wiącek on 30/03/2024.
//

import SwiftUI

struct WeatherView: View {
    var isDay = true
    @State private var city = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                if isDay {
                    Color.backgroundDay
                        .ignoresSafeArea()
                } else {
                    Color.backgroundNight
                        .ignoresSafeArea()
                }
                ScrollView {
                    TextField("Search", text: $city)
                        .padding()
                        .frame(width: .infinity, height: 40)
                        .background(Color(hex: isDay ? "#071F2C" : "#141617"))
                        .clipShape(.rect(cornerRadius: 30))
                        .padding(.horizontal, 25)
                        .padding(.bottom)
                    
                    VStack(spacing: 25) {
                        VStack {
                            Text("Warsaw".uppercased())
                                .font(.system(size: 30, weight: .black))
                                .tracking(5)
                            
                            Text("Partly Cloudy".capitalized)
                                .font(.system(size: 20, weight: .light))
                                .tracking(3)
                        }
                        .padding(.top)
                        
                        Image("02d")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150)
                        
                        HStack(alignment: .top, spacing: 3) {
                            Text("16")
                                .font(.system(size: 60, weight: .medium))
                            Text("°")
                                .font(.system(size: 45))
                        }
                        
                        WeatherDetailsView()
                        
                        HourlyForecastView()
                        
                        DailyForecastView()
                    }
                }
            }
        }
    }
}

#Preview {
    WeatherView()
        .preferredColorScheme(.dark)
}
