//
//  Form.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/6/23.
//

import SwiftUI

struct FormView: View {
    @State var name: String = ""
    @State var deportes: Bool = false
    @State var gastronomia: Bool = false
    @State var entretenimiento: Bool = false
    @State var gaming: Bool = false
    
    var body: some View {
        Form(content: {
            Section {
                TextField("Nombre", text: $name)
                TextField("apellido", text: $name)
                TextField("email", text: $name)
            } header: {
                Text("Datos Basicos")
            }
            
            Section {
                Toggle(isOn: $deportes) {
                    Text("deportes")
                }
                Toggle(isOn: $gastronomia) {
                    Text("gastronomia")
                }
                Toggle(isOn: $entretenimiento) {
                    Text("entretenimiento")
                }
                Toggle(isOn: $gaming) {
                    Text("gaming")
                }
            } header: {
                Text("Preferencias")
            } footer: {
                HStack {
                    Spacer()
                    Label("Version 1.2.2", systemImage: "iphone")
                    Spacer()
                }
            }

        })
    }
}

#Preview {
    FormView()
}
