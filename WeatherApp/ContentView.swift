//
//  ContentView.swift
//  WeatherApp
//
//  Created by Maciej Wiącek on 28/03/2024.
//

import SwiftUI

struct ContentView: View {
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.3)
    }
    
    var body: some View {
        TabView {
            Text("Test")
                .tabItem {
                    Image(systemName: "location.fill")
                }
            
            Text("Test")
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page)
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
