//
//  DetailVIew.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import SwiftUI

struct DetailVIew: View {
    @Binding var documet: Document
    @State var isShowingEditView = false
    var body: some View {
        VStack {
            Text(documet.title)
            Text(documet.content)
        }
        .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingEditView.toggle()
                }, label: {
                    Text("Edit")
                })
        )
        .sheet(isPresented: $isShowingEditView) {
            EditView(document: $documet)
        }
    }
}

struct DetailVIew_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData(documentModel: DocumentModel(), userModel: UserModel()))
    }
}
