//
//  MyView.swift
//  CustomView
//
//  Created by Serhii Malyshko on 25.03.2026.
//

import Foundation
import SwiftUI

struct MyView: View {
    let helloFont: Font
    let helloText: String
    
    var body: some View {
        VStack {
            Text(helloText)
                .font(helloFont)
            Text("Glad to meet you.")
        }
    }
}

