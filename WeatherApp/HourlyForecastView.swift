//
//  HourlyForecastView.swift
//  WeatherApp
//
//  Created by Maciej Wiącek on 30/03/2024.
//

import SwiftUI

struct HourlyForecastView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("24-HOUR FORECAST")
                .padding([.top, .leading])
                .font(.system(size: 15))
//                .foregroundStyle(.secondary)
                .foregroundStyle(Color(hex: "#4F7B94"))
            
            Divider()
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 25) {
                    ForEach(1..<12) { hour in
                        VStack(spacing: 5) {
                            Text("\(hour)PM")
                                .font(.system(size: 15).bold())
                            
                            Image("02n")
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
        .background(Color(hex: "#071F2C"))
        .clipShape(.rect(cornerRadius: 30))
        .padding(.horizontal, 25)
        .shadow(radius: 2, x: 4, y: 4)
    }
}

#Preview {
    HourlyForecastView()
        .preferredColorScheme(.dark)
}
