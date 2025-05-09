//
//  ContentView.swift
//  SwiftUI-ViewsAndState
//
//  Created by Zdeněk Borovec on 09.05.2025.
//

import SwiftUI

struct ContentView: View {
    let messages = [
        "Dog",
        "Cat",
        "Elephant",
        "Monkey",
        "Mouse"
    ]
    
    @State private var messageIndex = 0

    var message: String {
        messages[messageIndex]
    }

    var body: some View {
        NavigationStack {
            VStack {
                Text(message)
                    .font(.title)
                    .foregroundColor(.primary)
                    .padding()
                    .animation(.easeInOut, value: messageIndex)

                Button("Change Animal") {
                    messageIndex = (messageIndex + 1) % messages.count
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 2)
                )
                .padding()
            }
            .navigationTitle("Animals")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemBackground))
        }
    }
}

#Preview {
    ContentView()
}

