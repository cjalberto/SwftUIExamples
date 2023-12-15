//
//  textEditor.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 10/31/23.
//

import SwiftUI

struct textEditor: View {
    
    @State var text = ""
    @State private var count = 0
    @State private var color = Color.red
    
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .padding(EdgeInsets(top: 20, leading: 10, bottom: 20, trailing: 10))
                .autocorrectionDisabled()
                .autocapitalization(.none)
                .font(.headline)
                .onChange(of: text) { oldValue, newValue in
                    count = newValue.count
                    color = count > 10 ? .green : .red
                }
            Text(verbatim: "\(count)")
                .font(.largeTitle)
                .foregroundColor(color)
        }
    }
}

#Preview {
    textEditor()
}
