//
//  ContentView.swift
//  Steppers
//
//  Created by elsalvador on 25/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var value: Int = 4

    var body: some View {
        VStack {
            Text("Selección: \(value)")
                .multilineTextAlignment(.center)
                .bold()

            HStack {
                Stepper(value: $value, in: 1...10) {
                    Text("")
                }
                .padding(.horizontal, 120.0)

                Spacer()
            }
        }
        .padding()
        Button(action: {
            // Resetear el valor del Stepper a un valor inicial (por ejemplo, 4)
            value = 0
        }) {
            Text("Reset")
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .cornerRadius(8)
        }
        .buttonStyle(DefaultButtonStyle())
    }
    
}

#Preview {
    ContentView()
}
