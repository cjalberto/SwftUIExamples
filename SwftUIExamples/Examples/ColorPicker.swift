//
//  ColorPicker.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/3/23.
//

import SwiftUI

struct ColorPickerView: View {
    @State var currentColor: Color = .black
    var body: some View {
        VStack {
            ColorPicker("color", selection: $currentColor)
            Rectangle()
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(self.currentColor)
        }.padding()
        
    }
}

#Preview {
    ColorPickerView()
}
