//
//  DatePicker.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/3/23.
//

import SwiftUI

struct DatePickerView: View {
    @State var currentDate = Date()
    
    var body: some View {
        Form {
            DatePicker("Selecciona fecha",
                       selection: $currentDate,
                       in: Date()...,
                       displayedComponents: .date)
            Text(currentDate, style: .date)
        }
    }
}

#Preview {
    DatePickerView()
}
