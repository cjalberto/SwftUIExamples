//
//  Stepper.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/6/23.
//

import SwiftUI

struct StepperView: View {
    @State private var value = 0
    @State private var value2 = 0
    let colors: [Color] = [.orange, .red, .gray, .blue,
                           .green, .purple, .pink]
    let step = 5
    let range = 1...50
    
    var body: some View {
        Form {
            Stepper(
                value: $value2,
                in: range,
                step: step
            ) {
                Text("Current: \(value2) in \(range.description) " +
                     "stepping by \(step)")
            }
            .padding(5)
            
            Stepper {
                Text("Value: \(value) Color: \(colors[value].description)")
            } onIncrement: {
                incrementStep()
            } onDecrement: {
                decrementStep()
            }
            .padding(5)
            .background(colors[value])
            .cornerRadius(5)
        }
    }
    
    
    
    
    func incrementStep() {
        value += 1
        if value >= colors.count { value = 0 }
    }
    
    
    func decrementStep() {
        value -= 1
        if value < 0 { value = colors.count - 1 }
    }
}

#Preview {
    StepperView()
}
