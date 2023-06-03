//
//  ListView.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List($modelData.documents) { document in
                NavigationLink(destination: DetailVIew(documet: document)) {
                    Text(document.wrappedValue.title)
                }
            }
            
            .navigationTitle("List")
        }
//        NavigationStack {
//            List(modelData.documents) {
//                NavigationLink($0.id, value: $0)
//            }
//        }
//        .navigationDestination(for: Document.self) { _ in
//            DetailVIew()
//        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
