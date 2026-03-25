//
//  ContentView.swift
//  MyselfInSixWords
//
//  Created by Serhii Malyshko on 25.03.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 24) {
            HStack(spacing: 10) {
                Text("Tall")
                    .padding(8)
                    .background(Color.accentColor, in: RoundedRectangle(cornerRadius: 8))
                Text("Perseverant")
                    .padding(8)
                    .background(Color.purple, in: RoundedRectangle(cornerRadius: 8))
                Text("Motivated")
                    .padding(8)
                    .background(Color.green, in: RoundedRectangle(cornerRadius: 8))
            }
            HStack(spacing: 10) {
                Text("Sensetive")
                    .padding(8)
                    .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                Text("Sensible")
                    .padding(8)
                    .background(Color.cyan, in: RoundedRectangle(cornerRadius: 8))
                Text("Ukrainian")
                    .padding(8)
                    .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
