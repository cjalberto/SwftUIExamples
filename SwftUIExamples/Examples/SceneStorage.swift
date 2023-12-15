//
//  SceneStorage.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/18/23.
//

import SwiftUI

struct SceneStorageView: View {
    @SceneStorage("text") private var text = ""
    @SceneStorage("flag") private var flag = false
    
    var body: some View {
        Form {
            TextEditor(text: $text)
                .frame(height: 300)
                .padding()
            Toggle(isOn: $flag) {
                Text("Publicar a la mejor hora")
            }.padding()
            HStack(alignment: .center) {
                Button {
                    print("algo")
                } label: {
                    Text(flag ? "Publicar a la mejor hora 🔄" : "Publicar ahora 🐥")
                }
            }.frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    SceneStorageView()
}
