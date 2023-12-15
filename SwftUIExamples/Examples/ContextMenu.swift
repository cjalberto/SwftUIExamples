//
//  ContextMenu.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/13/23.
//

import SwiftUI

struct ContextMenu: View {
    @State private var selectedColor: Color = .blue
    
    var body: some View {
        Rectangle()
            .fill(selectedColor)
            .frame(width: 100, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .contextMenu {
                Button(action: {
                    selectedColor = .red
                }) {
                    Text("Rojo")
                    Image(systemName: "paintpalette")
                        .foregroundColor(.red)
                }

                Button(action: {
                    selectedColor = .blue
                }) {
                    Text("Azul")
                    Image(systemName: "paintpalette")
                        .foregroundColor(.blue)
                }

                Button(action: {
                    selectedColor = .green
                }) {
                    Text("Verde")
                    Image(systemName: "paintpalette")
                        .foregroundColor(.green)
                }
            }
            .padding()
    }
}


#Preview {
    ContextMenu()
}
