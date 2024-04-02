//
//  WeatherDetailsView.swift
//  WeatherApp
//
//  Created by Maciej Wiącek on 01/04/2024.
//

import SwiftUI

struct WeatherDetailsView: View {
    var isDay = true
    
    var body: some View {
        Grid {
            GridRow {
                VStack {
                    Text("Humidity")
                        .font(.system(size: 15))
                        .foregroundStyle(.secondary)
                        .padding(.top, 10)
                    
                    Spacer()
                    
                    Text("55%")
                        .font(.system(size: 25).bold())
                        .padding(.bottom, 30)
                }
                .frame(width: 175, height: 100)
                .background(Color(hex: isDay ? "#071F2C" : "#141617"))
                .clipShape(.rect(cornerRadius: 30))
                VStack {
                    Text("Humidity")
                        .font(.system(size: 15))
                        .foregroundStyle(.secondary)
                        .padding(.top, 10)
                    
                    Spacer()
                    
                    Text("55%")
                        .font(.system(size: 25).bold())
                        .padding(.bottom, 30)
                }
                .frame(width: 175, height: 100)
                .background(Color(hex: isDay ? "#071F2C" : "#141617"))
                .clipShape(.rect(cornerRadius: 30))
            }
            
            GridRow {
                VStack {
                    Text("Humidity")
                        .font(.system(size: 15))
                        .foregroundStyle(.secondary)
                        .padding(.top, 10)
                    
                    Spacer()
                    
                    Text("55%")
                        .font(.system(size: 25).bold())
                        .padding(.bottom, 30)
                }
                .frame(width: 175, height: 100)
                .background(Color(hex: isDay ? "#071F2C" : "#141617"))
                .clipShape(.rect(cornerRadius: 30))
                VStack {
                    Text("Humidity")
                        .font(.system(size: 15))
                        .foregroundStyle(.secondary)
                        .padding(.top, 10)
                    
                    Spacer()
                    
                    Text("55%")
                        .font(.system(size: 25).bold())
                        .padding(.bottom, 30)
                }
                .frame(width: 175, height: 100)
                .background(Color(hex: isDay ? "#071F2C" : "#141617"))
                .clipShape(.rect(cornerRadius: 30))
            }
        }
        .padding(.horizontal, 25)
    }
}

#Preview {
    WeatherDetailsView()
        .preferredColorScheme(.dark)
}
