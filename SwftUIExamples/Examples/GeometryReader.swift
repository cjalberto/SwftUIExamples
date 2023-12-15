//
//  GeometryReader.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/18/23.
//

import SwiftUI

struct GeometryReader1: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Text("Width: \(proxy.size.width)")
                    .background (Color.orange)
                    .padding()
                Text("Height: \(proxy.size.height)")
                    .background(Color.orange)
                    .padding()
                Text("Coordinates Local: \(proxy.frame(in: .local).debugDescription)")
                    .background (Color.orange)
                    .padding()
                Text("Coordinates Global: \(proxy.frame(in: .global).debugDescription)")
                    .background(Color.orange)
                    .padding()
            }
        }.background(.red)
    }
}

struct GeometryReader2: View {
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0, content: {
                HStack(spacing: 0, content: {
                    Rectangle()
                        .frame(width: proxy.size.width/2, height: proxy.size.width/2)
                        .foregroundStyle(Color.green)
                        .overlay {
                            Circle()
                                .foregroundColor(.blue)
                                .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .overlay {
                                    Text("1")
                                        .foregroundStyle(.white)
                                }
                    }
                    Rectangle()
                        .frame(width: proxy.size.width/2, height: proxy.size.width/2)
                        .foregroundStyle(Color.orange)
                        .overlay {
                            Circle()
                                .foregroundColor(.blue)
                                .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .overlay {
                                    Text("2")
                                        .foregroundStyle(.white)
                                }
                        }
                })
                Rectangle()
                    .frame(width: proxy.size.width)
                    .foregroundStyle(Color.purple)
                    .overlay {
                        Circle()
                            .foregroundColor(.blue)
                            .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .overlay {
                                Text("2")
                                    .foregroundStyle(.white)
                            }
                    }
            })
        }.background(.red)
    }
}

let arrayNames = [
                "pedro",
                "pablo",
                "carlos",
                "juan",
                "jose",
                "cristian",
                "marcos"
                ]

struct GeometryReaderScrollView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(arrayNames, id: \.self) { name in
                    GeometryReader(content: { proxy in
                        VStack {
                            Text("\(proxy.frame(in: .global).minY)")
                            Spacer ()
                            Text ("\(name)")
                                .frame (width: 370, height: 200)
                                .background (Color.green)
                                .cornerRadius (20)
                            Spacer()
                        }
                        .shadow(radius: 5)
                        .rotation3DEffect( 
                            Angle(degrees: proxy.frame(in: .global).minY - 47),
                            axis: (x: 0.0, y: 1.0, z: 0.0)
                        )
                    }).frame(height: 240)
                }
            }
        }
    }
}

#Preview {
    GeometryReaderScrollView()
}
