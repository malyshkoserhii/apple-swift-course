//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Serhii Malyshko on 25.03.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
            Text("Knock, knock!")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .shadow(color:Color.purple, radius: 1, x: 2, y: 2)
            Text("Who's there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                .shadow(color:Color.indigo, radius: 1, x: 2, y: 2)
            Text("It's me. Please open the door.")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .shadow(color:Color.purple, radius: 1, x: 2, y: 2)
            Text("Okay")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                .shadow(color:Color.indigo, radius: 1, x: 2, y: 2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
