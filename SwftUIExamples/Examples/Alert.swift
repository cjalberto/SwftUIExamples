//
//  Alert.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/13/23.
//

import SwiftUI

struct AlertView: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
        Button(action: {
            self.isPresented.toggle()
        }, label: {
            Text("SHOW ALERT")
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            
        })
        .alert(isPresented: $isPresented) {
            Alert(
                title: Text("Alerta 2"),
                message: Text("Esta es la segunda alerta."),
                dismissButton: .default(Text("aceptar"), action: {
                    print(self.isPresented)
                })
            )
        }
    }
}

struct AlertSheet: View {
    @State private var isPresented: Bool = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .frame(width: 300, height: 300)
                .background(backgroundColor)
            Button(action: {
                self.isPresented.toggle()
            }, label: {
                Text("SHOW ALERT")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            })
        }
        .confirmationDialog("Change background", isPresented: $isPresented) {
            
            Button("Red") { backgroundColor = .red }
                .foregroundStyle(Color.red)
            Button("Green") { backgroundColor = .green }
            Button("Blue") { backgroundColor = .blue }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Select a new color")
        }
        
    }
}

#Preview {
    AlertSheet()
}
