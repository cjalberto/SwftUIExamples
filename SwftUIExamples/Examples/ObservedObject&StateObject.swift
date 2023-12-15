//
//  ObservedObject&StateObject.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/14/23.
//

import SwiftUI

struct ObservedObjectView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 10.0, content: {
                Text("Contador: \(count)")
                    .font(.title)
                    .bold()
                Button(action: {
                    self.count += 1
                }, label: {
                    Text("aumentar Contador")
                        .padding()
                        .background(Color.blue)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                }).padding()
            })
            ListView()
        }
    }
}

struct ListView: View {
    @StateObject var videosViewModel = ListViewModel()
    
    var body: some View {
        VStack {
            NavigationView(content: {
                List(content: {
                    ForEach(videosViewModel.videoModel, id: \.self) { key in
                        Text(key)
                    }
                })
                .listStyle(InsetGroupedListStyle())
                .navigationTitle("Swift Beta Videos")
                .navigationBarItems(leading: Button(action: self.videosViewModel.addMoreTopics, label: {
                    Text("añadir")
                }))
            })
            ResetList(videosViewModel: self.videosViewModel)
        }
    }
}

struct ResetList: View {
    @ObservedObject var videosViewModel : ListViewModel
    
    var body: some View {
        Button(action: {
            self.videosViewModel.videoModel = ["xcode",
                               "swift",
                               "swiftUI"]
        }, label: {
            Text("reset \(self.videosViewModel.videoModel.count)")
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        }).padding()
    }
}

final class ListViewModel: ObservableObject {
    @Published var videoModel: [String] = []
    
    init() {
        self.videoModel = ["xcode",
                           "swift",
                           "swiftUI"]
    }
    func addMoreTopics() {
        self.videoModel.append("CI/CD")
        self.videoModel.append("GIT")
    }
}

#Preview {
    ObservedObjectView()
}
