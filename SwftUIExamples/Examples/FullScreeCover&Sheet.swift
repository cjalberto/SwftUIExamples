//
//  FullScreeCover&Sheet.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/13/23.
//

import SwiftUI

struct ContentView2: View {
    @State private var isPresented: Bool = false
    @State private var isPresented2: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Button(action: {
                self.isPresented = true
            }, label: {
                Text("FULL SCREEN")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            })
            Spacer()
            Button(action: {
                self.isPresented2 = true
            }, label: {
                Text("SHEET SCREEN")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            })
            Spacer()
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .fullScreenCover(isPresented: $isPresented, onDismiss: {
                print("se oculto")
            }, content: {
                ZStack(content: {
                    Color.red.ignoresSafeArea()
                    Button(action: {
                        self.isPresented = false
                    }, label: {
                        Text("bienvenido a la segunda pantalla 😉")
                    })
                })
            })
            .sheet(isPresented: $isPresented2, content: {
                ZStack(content: {
                    Color.brown.ignoresSafeArea()
                    Button(action: {
                        self.isPresented2 = false
                    }, label: {
                        Text("bienvenido a la segunda pantalla 😉")
                    })
                })
            })
    }
}

#Preview {
    ContentView2()
}
