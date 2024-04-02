//
//  DailyForecastView.swift
//  WeatherApp
//
//  Created by Maciej Wiącek on 30/03/2024.
//

import SwiftUI

struct DailyForecastView: View {
    let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    var isDay = true
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("7-DAYS FORECAST")
                .padding([.top, .leading])
                .font(.system(size: 15))
                .foregroundStyle(Color(hex: "#6A6D6F"))
            
            Divider()
                .padding(.horizontal)
            
            ForEach(days, id: \.self) { day in
                VStack {
                    HStack {
                        Text(day)
                            .frame(width: 90, alignment: .leading)
                        Spacer()
                        Spacer()
                        HStack {
                            Image("02d")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, alignment: .center)
                            Text(day == "Wednesday" ? "45%" : "")
                                .font(.system(size: 15))
                        }
                        .frame(minWidth: 80, alignment: .leading)
                        Spacer()
                        HStack(alignment: .bottom) {
                            Text("9°")
                                .foregroundStyle(.secondary)
                                .font(.system(size: 16))
                            Text("19°")
                        }
                        .frame(width: 90, alignment: .trailing)
                    }
                    .frame(height: 40)
                    .contentShape(.rect)
                }
                .padding(.horizontal)
                .padding(.vertical, 3)
                
                Divider()
                    .padding(.horizontal)
            }
        }
        .background(Color(hex: isDay ? "#071F2C" : "#141617"))
        .clipShape(.rect(cornerRadius: 30))
        .padding(.horizontal, 25)
    }
}

#Preview {
    DailyForecastView()
        .preferredColorScheme(.dark)
}
