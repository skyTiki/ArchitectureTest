//
//  ModelData.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import SwiftUI

final class ModelData: ObservableObject {
    let documentModel: DocumentModelDataImpl
    
    @Published var documents: [Document]
    @Published var user: User = User.fetchUser(id: 1)
    
    init(documentModel: DocumentModelDataImpl) {
        self.documentModel = documentModel
        self.documents = documentModel.fetchDocuments()
//        self.user =
    }
}

