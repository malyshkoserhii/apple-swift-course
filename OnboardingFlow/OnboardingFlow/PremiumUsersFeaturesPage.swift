//
//  PremiumUsersFeaturesPage.swift
//  OnboardingFlow
//
//  Created by Serhii Malyshko on 27.03.2026.
//

import SwiftUI

struct PremiumUsersFeaturesPage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Features for Premium Users")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top, 100)
                .padding(.bottom)
            
            FeatureCard(iconName: "square.and.arrow.down", description: "Lorem ipsum dolor")
            FeatureCard(iconName: "microphone", description: "Gaudeamus igitur, Juvenes dum sumus!")
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    PremiumUsersFeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
        
}
