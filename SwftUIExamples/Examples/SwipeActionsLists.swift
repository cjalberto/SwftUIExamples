//
//  SwipeActionsLists.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/18/23.
//

import SwiftUI

struct SwipeActionsLists: View {
    @State private var items = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    Text(item)
                        .font(.title)
                        .frame(height: 50)
                }
                .swipeActions(edge: .leading, allowsFullSwipe: false) {
                    // Agregar acciones personalizadas
                    Button(role: .destructive) {
                        // Acción personalizada 1 (puedes implementar tu lógica aquí)
                        print("Eliminar")
                    } label: {
                        Image(systemName: "trash")
                    }
                    
                    Button {
                        // Acción personalizada 2 (puedes implementar tu lógica aquí)
                        print("Compartir")
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }.tint(Color.yellow)
                }
                .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                    // Agregar acciones personalizadas
                    Button(role: .destructive) {
                        // Acción personalizada 1 (puedes implementar tu lógica aquí)
                        print("Eliminar")
                    } label: {
                        Image(systemName: "trash")
                    }
                    
                    Button {
                        // Acción personalizada 2 (puedes implementar tu lógica aquí)
                        print("Compartir")
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }.tint(Color.blue)
                }
            }
            .refreshable {
                // Lógica de recarga
                items = ["Item 1", "Item 2", "Item 3"]
            }
            .navigationTitle("Lista")
            .toolbar {
                // Botón de recarga en la barra de herramientas
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Agregar") {
                        // Lógica de recarga de la lista
                        items.append("Nuevo Item")
                    }
                }
            }
        }
    }
}

#Preview {
    SwipeActionsLists()
}
