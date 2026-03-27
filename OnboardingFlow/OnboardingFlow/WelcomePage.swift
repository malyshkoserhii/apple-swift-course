//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Serhii Malyshko on 27.03.2026.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                    Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
             
            Text("Welcome to My App")
                .font(Font.title)
                .fontWeight(.semibold)
                .padding(.top)
                .padding(.bottom)
            
            Text("Description text")
                .font(.title2)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
