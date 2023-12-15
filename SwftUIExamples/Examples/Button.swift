//
//  Button.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 10/30/23.
//

import SwiftUI

struct ButtonsView: View {
    @State private var isButtonPressed = false
    @State private var showingAlert = false

    var body: some View {
        VStack {
            // 1. Crear un botón con un texto y una acción
            Button("Presiona este botón") {
                // Acción cuando se presiona el botón
                isButtonPressed.toggle()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            // 2. Cambiar el aspecto del botón cuando se presiona
            Button("Botón con estado") {
                // Acción cuando se presiona el botón
                isButtonPressed.toggle()
            }
            .padding()
            .background(isButtonPressed ? Color.green : Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)

            // 3. Personalizar el estilo del botón
            Button(action: {
                // Acción cuando se presiona el botón
            }) {
                Text("Botón personalizado")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }

            // 4. Botón con navegación a otra vista
            NavigationLink(destination: Text("Nueva Vista")) {
                Text("Ir a otra vista")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            
            Button {
                // Acción cuando se presiona el botón
                showingAlert.toggle()
            } label: {
                Text("Mostrar alerta")
                    .padding()
                    .background(Color.cyan)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }.alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("Alerta"),
                    message: Text("Este es un mensaje de alerta"),
                    primaryButton: .default(Text("Aceptar"), action: {
                        // Acción al presionar el botón Aceptar
                    }),
                    secondaryButton: .cancel()
                )
            }
            
            Button {
                print("dale like")
            } label: {
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 5)
                    .overlay {
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 40, weight: .bold))
                    }
            }
            
        }
    }
}

#Preview {
    ButtonsView()
}
