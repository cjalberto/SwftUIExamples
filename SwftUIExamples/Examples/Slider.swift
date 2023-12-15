//
//  Slider.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/6/23.
//

import SwiftUI

struct SliderView: View {
    @State private var sliderValue = 50.0
    @State private var twoByTwo = false
    
    var body: some View {
        VStack(alignment: .center, content: {
                Text("Valor seleccionado: \(sliderValue, specifier: "%.2f")")
                    .font(.headline)
                    .padding()

                Slider(value: $sliderValue, in: 0...100, step: twoByTwo ? 2.0 : 1.0)
                    .padding()
                    .accentColor(.blue)
                    .frame(width: 300)
                
                Text("Rango: 0 - 100")
                    .font(.subheadline)
                    .foregroundColor(.gray)

                Toggle(isOn: $twoByTwo) {
                    Label("cambiar de a \(twoByTwo ? 2 : 1)", systemImage: "gear")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                Text("Paso de 1.0")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            })
        }
}

#Preview {
    SliderView()
}
