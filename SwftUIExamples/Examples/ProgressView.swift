//
//  ProgressView.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/3/23.
//

import SwiftUI

struct ProgressV: View {
    @State var isLoading: Bool = true
    @State var progress: Float = 10.0
    var total: Float = 100.0
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                if self.isLoading {
                    ProgressView("Cargando...")
                        .progressViewStyle(.circular)
                        .padding()
                }
                Button("cambiar") {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isLoading.toggle()
                    }
                }
            }
            Spacer()
            VStack {
                ProgressBar(progress: $progress, total: 100.0, backgroundColor: .gray)
                    .frame(height: 20)
                    .padding()
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                    Button("-") {
                        withAnimation {
                            let newValue = progress - 10
                            progress = max(newValue, 0)
                        }
                    }.font(.title)
                    Button("+") {
                        withAnimation {
                            let newValue = progress + 10
                            progress = min(newValue, total)
                        }
                    }.font(.title)
                })
                
            }
            Spacer()
        }
    }
}

struct ProgressBar: View {
    @Binding var progress: Float
    var total: Float
    var backgroundColor: Color = .green
    var progressBarColor: Color = .blue
    
    var body: some View {
        GeometryReader { geometry in
            Rectangle() // CornerRadius más grande
                .foregroundColor(backgroundColor)
                .overlay(alignment: .leading, content: {
                    Rectangle()
                        .foregroundColor(progressBarColor)
                        .frame(width: min(geometry.size.width * CGFloat(progress / total), geometry.size.width))
                })
                .clipShape(RoundedRectangle(cornerRadius: geometry.size.height/2))
        }
    }
}


#Preview {
    ProgressV()
}
