//
//  ContentView.swift
//  WeatherApp
//
//  Created by Maciej Wiącek on 28/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.backgroundDay
                .ignoresSafeArea()
            
            TabView {
                WeatherView()
                    .tabItem {
                        Image(systemName: "location.fill")
                    }
                
                WeatherView()
            }
            .tabViewStyle(.page)
            .padding(.top, 60)
        }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
//        .task {
//            do {
//                weatherModel = try await WeatherData().getData()
//            } catch {
//                print(error)
//            }
//        }
    }
}

#Preview {
    ContentView()
}
