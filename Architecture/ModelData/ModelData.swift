//
//  ModelData.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import SwiftUI

final class ModelData: ObservableObject {
    let documentModel: DocumentModelDataImpl
    let userModel: UserModelImpl
    
    @Published var documents: [Document]
    @Published var user: User
    
    init(documentModel: DocumentModelDataImpl, userModel: UserModelImpl) {
        self.documentModel = documentModel
        self.userModel = userModel
        
        self.documents = documentModel.fetchDocuments()
        self.user = userModel.fetchUser(id: 1)
    }
}

