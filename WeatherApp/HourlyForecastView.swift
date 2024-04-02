//
//  HourlyForecastView.swift
//  WeatherApp
//
//  Created by Maciej Wiącek on 30/03/2024.
//

import SwiftUI

struct HourlyForecastView: View {
    var isDay = true
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("24-HOUR FORECAST")
                .padding([.top, .leading])
                .font(.system(size: 15))
                .foregroundStyle(Color(hex: "#6A6D6F"))
            
            Divider()
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 25) {
                    ForEach(1..<12) { hour in
                        VStack(spacing: 5) {
                            Text("\(hour)PM")
                                .font(.system(size: 15).bold())
                            
                            Image("02d")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40)
                            
                            Text("15°C")
                        }
                        .padding(.leading, 3)
                    }
                }
                .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 170)
        .background(Color(hex: isDay ? "#071F2C" : "#141617"))
        .clipShape(.rect(cornerRadius: 30))
        .padding(.horizontal, 25)
    }
}

#Preview {
    HourlyForecastView()
        .preferredColorScheme(.dark)
}
