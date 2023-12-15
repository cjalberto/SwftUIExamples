//
//  ContentView.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 10/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5.0, content: {
            Text("Siguiendo")
                .font(.largeTitle)
                .bold()
            Text("CANALES RECOMENDADOS")
                .font(.headline)
                .foregroundStyle(.gray)
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Rectangle()
                    .frame(width: 120.0, height: 77.0)
                    .foregroundColor(Color.blue)
                    .clipped()
                VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
//                    HStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
//                        Image(systemName: "person.fill")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 25.0, height: 25.0)
//                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                        Text("USERNAME")
//                            .font(.subheadline)
//                            .bold()
//                        
//                    })
                    Label("USERNAME", systemImage: "person.fill")
                        .font(.subheadline)
                        .bold()
                        .imageScale(.large)
                    Text("Streaming de programacion\nsolo hablando ")
                        .font(.caption2)
                        .foregroundStyle(.gray)
                    Spacer()
                })
                Spacer()
            }).frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: 77
              )
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
