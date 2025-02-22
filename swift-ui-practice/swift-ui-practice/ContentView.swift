//
//  ContentView.swift
//  swift-ui-practice
//
//  Created by Jun Guo on 2025/2/22.
//

import SwiftUI

struct MyCustomButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
        }
        .padding(10)
        .foregroundColor(.white)
        .background(.black)
        .cornerRadius(8)
    }
}

struct SecondView: View {
    var body: some View {
        VStack {
            Text("This is the Second Page")
                .font(.largeTitle)
        }
        .padding()
        .navigationTitle("Second Page")
    }
}

struct ContentView: View {
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Counter: \(count)")
                .font(.title)
            
            MyCustomButton(title: "Increment", action: {
                count += 1
            })
            
            MyCustomButton(title: "Reset", action: {
                count = 0
            })
            
            NavigationLink(destination: SecondView()) {
                MyCustomButton(title: "Go to Second Page"){
                    count += 1
                }
            }
            .navigationTitle("First Page")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
