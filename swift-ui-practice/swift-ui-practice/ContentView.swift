//
//  ContentView.swift
//  swift-ui-practice
//
//  Created by Jun Guo on 2025/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Jun!")
            Button("Press me") {
                print("Button pressed!")
            }
            .padding()
            .background(.tint)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
