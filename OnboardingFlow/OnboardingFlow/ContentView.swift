//
//  ContentView.swift
//  OnboardingFlow
//
//  Created by Serhii Malyshko on 27.03.2026.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientMiddle,
    .gradientBottom
]

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                WelcomePage()
                FeaturesPage()
                PremiumUsersFeaturesPage()
            }
            .background(Gradient(colors: gradientColors))
            .tabViewStyle(.page)
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
