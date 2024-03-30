//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Maciej Wiącek on 30/03/2024.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        VStack {
            Text("Saturday, 30 March 2024")
                .foregroundStyle(.secondary)
            
            VStack {
                Text("Warsaw".uppercased())
                    .font(.system(size: 40, weight: .black))
                    .tracking(5)
                
                Text("Partly Cloudy".uppercased())
                    .font(.system(size: 25, weight: .light))
                    .tracking(3)
            }
            
            VStack {
                Image(systemName: "cloud.moon")
                    .font(.system(size: 80, weight: .medium))
                
                Text("16°C")
                    .font(.system(size: 80, weight: .medium))
            }
            
            HStack(spacing: 25) {
                VStack(spacing: 10) {
                    Text("MIN")
                        .foregroundStyle(.secondary)
                    Text("9°C")
                }
                
                RoundedRectangle(cornerRadius: 50)
                    .foregroundStyle(.secondary)
                    .frame(width: 2, height: 40)
                
                VStack(spacing: 10) {
                    Text("MAX")
                        .foregroundStyle(.secondary)
                    Text("22°C")
                }
            }
        }
    }
}

#Preview {
    WeatherView()
}
