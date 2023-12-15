//
//  AppStorage.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/17/23.
//

import SwiftUI

struct AppStorageView: View {
    @State var text: String = ""
    @AppStorage("Name") var appStorageName: String = ""
    
    var body: some View {
        Form {
            TextField("Agregar Nombre", text: $text)
                .padding()
            HStack(alignment: .center) {
                Button("Guardar") {
                    appStorageName = text
                }.padding()
            }.frame(maxWidth: .infinity)
        }.onAppear(perform: {
            self.text = appStorageName
        })
    }
}

#Preview {
    AppStorageView()
}
