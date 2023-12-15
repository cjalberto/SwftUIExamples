//
//  states.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 10/30/23.
//

import SwiftUI

struct states: View {
    
    @State var count: Int = 0
    var body: some View {
        VStack {
            Text("current value is: \(self.count)")
        }
        Button("increase value") {
            self.count += 1
        }
    }
}

#Preview {
    states()
}
