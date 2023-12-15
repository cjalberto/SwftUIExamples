//
//  ModifierView.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 12/2/23.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    @State var cornerRadius: CGFloat = 15.0
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(cornerRadius)
    }
}

struct ButtonModifier2: ViewModifier {
    var cornerRadius: CGFloat
    var fontColor: Color
    var backgroundColor: Color

    func body(content: Content) -> some View {
        content
            .foregroundColor(fontColor)
            .padding()
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
    }
}

extension View {
    func buttonModifier2(cornerRadius: CGFloat = 15.0, fontColor: Color = .white, backgroundColor: Color = .purple) -> some View {
        self.modifier(ButtonModifier2(cornerRadius: cornerRadius, fontColor: fontColor, backgroundColor: backgroundColor))
    }
}

struct ModifierView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button("dale click") {
            print("algo")
        }.buttonModifier2()
    }
}

#Preview {
    ModifierView()
}
