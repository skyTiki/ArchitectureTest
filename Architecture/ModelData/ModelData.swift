//
//  ModelData.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import SwiftUI

final class ModelData: ObservableObject {
    @Published var documents = Document.getDocuments()
    @Published var user = User.fetchUser(id: 1)
}

