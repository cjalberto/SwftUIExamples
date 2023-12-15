//
//  LazyGrid.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/6/23.
//

import SwiftUI

struct LazyGridView: View {
    let systemImages = ["heart.fill", "star.fill", "circle.fill", "square.fill", "triangle.fill", "flag.fill", "person.fill"]
    let elements = 1...500
    let grids = [GridItem(.fixed(100)),
                 GridItem(.flexible(minimum: 20)),
                 GridItem(.flexible(minimum: 20)),
                 GridItem(.fixed(100))]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: grids, spacing: 20, content: {
                ForEach(elements, id: \.self) { index in
                    VStack {
                        if let randomImage = systemImages.randomElement() {
                            Image(systemName: randomImage)
                                .frame(width: 30, height: 30)
                        }
                        Text("\(index)")
                    }
                }
            })
        }.background(Color.green)
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: grids, spacing: 20, content: {
                ForEach(elements, id: \.self) { index in
                    VStack {
                        if let randomImage = systemImages.randomElement() {
                            Image(systemName: randomImage)
                                .frame(width: 30, height: 30)
                        }
                        Text("\(index)")
                    }
                }
            })
        }.background(Color.cyan)
    }
}

#Preview {
    LazyGridView()
}
