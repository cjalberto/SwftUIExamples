//
//  List.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/10/23.
//

import SwiftUI

struct Device: Identifiable, Hashable {
    let id: String = UUID().uuidString
    let title: String
    let imageName: String
}

let house = [
               Device(title: "Laptop", imageName:"laptopcomputer"),
               Device(title: "Mac mini", imageName: "macmini"),
               Device(title: "Mac Pro", imageName: "macpro.gen3"),
               Device(title: "Displays", imageName: "display.2"),
               Device(title: "Apple TV", imageName: "appletv")
              ]

let work = [
               Device(title: "iPhone", imageName: "iphone"),
               Device(title: "iPad", imageName: "ipad"),
               Device(title: "Airpods", imageName: "airpods"),
               Device(title: "Apple Watch", imageName: "applewatch")
]

struct ListDevicesView: View {
    
    @State var devices: [String: [Device]]
    
    var body: some View {
        List {
            ForEach(devices.keys.sorted(), id: \.self) { key in
                if let site = devices[key] {
                    Section(header: Text(key)) {
                        ForEach(site, id: \.self) { work in
                            DeviceRow(device: work)
                                .listRowSeparator(.hidden)
                        }
                    }
                }
            }
        }
        .listStyle(PlainListStyle())
//        .background(Color.clear)
//        .listRowSeparator(.hidden)
        
    }
}

struct DeviceRow: View {
    let device: Device

    var body: some View {
        HStack(spacing: 10, content: {
            Image(systemName: device.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28, height: 28)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text(device.title)
                .font(.headline)
        })
    }
}

#Preview {
    ListDevicesView(devices: ["HOUSE": house, "WORK": work])
}
