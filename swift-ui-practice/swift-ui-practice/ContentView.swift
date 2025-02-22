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
                .foregroundStyle(.blue)
            Text("Hello, Jun!")
            Button("Press me") {
                print("Button pressed!")
            }
            .padding(10)
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
