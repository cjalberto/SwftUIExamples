//
//  text.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 10/30/23.
//

import SwiftUI

struct text: View {
    var body: some View {
        Text("orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and")
            .font(.title)
            .underline()
            .padding()
            .rotation3DEffect(
                .degrees(15),
                axis: (x: 1.0, y: 0.0, z: 0.0)
            )
            .shadow(color: .yellow, radius: 1.5, x: 0, y: 5)
            .lineSpacing(10)
    }
}

struct text2: View {
    var body: some View {
        Text("Bienvenido")
            .font(.title)
            .bold()
            .underline()
            .foregroundColor(.red)
        + Text(" Carlos Jaramillo")
            .font(.title)
            .foregroundColor(.black)
    }
}

struct text3: View {
    let date = Date() // Tu fecha
    
    var body: some View {
        VStack(spacing: 10, content: {
            Text("Fecha con formato personalizado:")
                .font(.title2)
            Text(date, style: .date)
                .font(.subheadline)
            Text(date, style: .time)
                .font(.subheadline)
            Text(date, style: .relative)
                .font(.subheadline)
            Text(date, style: .timer)
                .font(.subheadline)
            Text(date.addingTimeInterval(3600) , style: .relative)
                .font(.subheadline)
            Text(date.addingTimeInterval(3600) , style: .timer)
                .font(.subheadline)
            Text(date, formatter: DateFormatter.customFormatter)
                .font(.subheadline)
        })
    }
}

extension DateFormatter {
    static let customFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        return formatter
    }()
}

#Preview {
    text3()
}
