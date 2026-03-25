//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Serhii Malyshko on 25.03.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                
                DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
                
                DayForecast(day: "Wed", isRainy: true, high: 55, low: 45)
                
                DayForecast(day: "Thu", isRainy: true, high: 55, low: 45)
                
                DayForecast(day: "Fri", isRainy: false, high: 70, low: 50)
                
                DayForecast(day: "Sat", isRainy: false, high: 80, low: 60)
                
                DayForecast(day: "Sun", isRainy: false, high: 90, low: 70)
            }
        }
     
    }
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
        
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var dayForeground: Color {
        if high >= 80 {
            return Color.red
        } else {
            return Color.secondary
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
                .padding(5)
                .foregroundStyle(dayForeground)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
