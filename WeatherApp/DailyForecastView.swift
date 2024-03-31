//
//  DailyForecastView.swift
//  WeatherApp
//
//  Created by Maciej Wiącek on 30/03/2024.
//

import SwiftUI

struct DailyForecastView: View {
    let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    var body: some View {
        List(days, id: \.self) { day in
            Text(day)
        }
    }
}

#Preview {
    DailyForecastView()
}
