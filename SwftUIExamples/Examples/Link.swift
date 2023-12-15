//
//  Link.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/6/23.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        Link("ir a pagina", destination:
                URL(string: "https://www.swiftbeta.com/tag/swiftui/page/2/")!)
        .padding()
        Link(destination:  URL(string: UIApplication.openSettingsURLString)!, label: {
            Label("Settings", systemImage: "gear")
                .foregroundColor(.white)
                .padding(10)
                .background(Color.blue)
                .font(.title)
                .cornerRadius(10.0)
                
        })
    }
}

#Preview {
    LinkView()
}
