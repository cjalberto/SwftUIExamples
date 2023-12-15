//
//  gestures.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/13/23.
//

import SwiftUI

struct GesturesView: View {
    @State private var scale: CGFloat = 1.0
    @State private var rotation: Angle = .degrees(0)
    @State private var offset: CGSize = .zero

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .scaleEffect(scale)
                .rotationEffect(rotation)
                .offset(offset)
                .gesture(
                    TapGesture()
                        .onEnded({ _ in
                            print("algo")
                        })
                )
                .simultaneousGesture(
                    MagnificationGesture()
                        .onChanged { value in
                            scale = value.magnitude
                        }
                        .onEnded({ value in
                            withAnimation(.interactiveSpring(duration: 0.3, extraBounce: 0.5, blendDuration: 5.0)) {
                                scale = 1.0
                            }
                        })
                )
                .simultaneousGesture(
                    RotationGesture()
                        .onChanged { value in
                            rotation = value
                        }
                        .onEnded({ value in
                            withAnimation(.interactiveSpring(duration: 0.3, extraBounce: 0.5, blendDuration: 5.0)) {
                                rotation = Angle(degrees: 0)
                            }
                        })
                )
                .simultaneousGesture(
                    DragGesture()
                        .onChanged { value in
                            offset = value.translation
                        }
                        .onEnded({ value in
                            withAnimation(.interactiveSpring(duration: 0.3, extraBounce: 0.5, blendDuration: 5.0)) {
                                offset = .zero
                            }
                        })
                )
                .padding()
            
            Text("Use pinch to scale, rotate with two fingers, and drag.")
                .foregroundColor(.gray)
                .italic()
                .padding()
        }
    }
}

#Preview {
    GesturesView()
}
