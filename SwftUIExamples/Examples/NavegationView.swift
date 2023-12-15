//
//  NavegationView.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/12/23.
//

import SwiftUI

struct NavegationView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("opcion 1", destination: Text("opcion 1"))
                NavigationLink("opcion 2", destination: Text("opcion 2"))
                NavigationLink("opcion 3", destination: Text("opcion 3"))
                NavigationLink("opcion 4", destination: Text("opcion 4"))
            }
            .navigationBarItems(leading: NavigationButtons(buttons: leftOptions), trailing: NavigationButtons(buttons: rightOptions))
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
        }
    }
}

let leftOptions = [OptionButton(title: "opt1", action: {print("1")}),
                   OptionButton(title: "opt2", action: {print("2")})]
let rightOptions = [OptionButton(title: "opt1", action: {print("1")}),
                   OptionButton(title: "opt2", action: {print("2")}),
                    OptionButton(title: "opt3", action: {print("3")})]


struct OptionButton: Hashable, Identifiable {
    let id = UUID()
    let title: String
    let action: () -> Void

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: OptionButton, rhs: OptionButton) -> Bool {
        return lhs.id == rhs.id
    }
}

struct NavigationButtons: View {
    @State var buttons: [OptionButton]
    
    var body: some View {
        HStack {
            ForEach(buttons, id: \.self) { option in
                Button(action: option.action) {
                    Text(option.title)
                }
            }
        }
    }
}


#Preview {
    NavegationView()
}
