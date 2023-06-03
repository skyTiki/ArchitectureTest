//
//  EditView.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import SwiftUI

struct EditView: View {
    @Binding var document: Document
    @State var originalDocument: Document
    @State var isShowingCofirmDialog = false
    @Environment(\.dismiss) var dismiss

    init(document: Binding<Document>) {
        _document = document
        _originalDocument = State(initialValue: document.wrappedValue)
    }
    
    var body: some View {
        
        NavigationView {
            VStack {
                TextField("Title", text: $originalDocument.title)
                TextField("Content", text: $originalDocument.content)
            }
            .padding()
            
            .navigationBarItems(
                leading:
                    Button(action: {
                        if document != originalDocument {
                            isShowingCofirmDialog.toggle()
                        } else {
                            dismiss()
                        }
                    }, label: {
                        Text("Cancel")
                    })
                    .confirmationDialog("", isPresented: $isShowingCofirmDialog, actions: {
                        Button(role: .destructive) {
                            dismiss()
                        } label: {
                            Text("変更を破棄する")
                        }
                    })
                ,trailing:
                    Button(action: {
                        document = originalDocument
                        dismiss()
                    }, label: {
                        Text("Save")
                    })
            )
        }
        .interactiveDismissDisabled(true)
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView(document: .constant(Document.getDocuments()[0]))
        ContentView()
            .environmentObject(ModelData())
    }
}
