//
//  textfield.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 10/30/23.
//

import SwiftUI

struct textfield: View {
    @State private var textoIngresado = ""
    @State private var passwordIngresado = ""
    @State private var placeholder = "Escribe aquí"
    @State private var passwordPlaceholder = "password aquí"
    @State private var esEditable = true

    var body: some View {
        VStack {
            // Parte 1: Configuración básica del TextField
            TextField(placeholder, text: $textoIngresado)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                .foregroundColor(.blue)
                .font(.title)
                .border(Color.gray, width: 2)
                .opacity(esEditable ? 1.0 : 0.5)
                .disabled(!esEditable)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .onChange(of: textoIngresado) { oldValue, newValue in
                    if newValue.last == " " {
                        textoIngresado = oldValue
                    }
                    print(textoIngresado)
                }
            
            SecureField(passwordPlaceholder, text: $passwordIngresado)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                .foregroundColor(.blue)
                .font(.title)
                .border(Color.gray, width: 2)
                .opacity(esEditable ? 1.0 : 0.5)
                .disabled(!esEditable)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .onChange(of: passwordIngresado) { oldValue, newValue in
                    print(passwordIngresado)
                }
            
            // Parte 3: Controles adicionales
            Toggle("Campo Editable", isOn: $esEditable)
                .padding()
            
            Button("Limpiar Campo") {
                textoIngresado = ""
                passwordIngresado = ""
            }
            .foregroundColor(.red)
        }
    }
}

#Preview {
    textfield()
}
