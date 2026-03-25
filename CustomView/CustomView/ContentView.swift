//
//  ContentView.swift
//  CustomView
//
//  Created by Serhii Malyshko on 25.03.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MyView(helloFont: .title, helloText: "Hello, World!!!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
