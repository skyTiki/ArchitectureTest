//
//  ArchitectureApp.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import SwiftUI

@main
struct ArchitectureApp: App {
    @StateObject private var modelData = ModelData(documentModel: DocumentModel())
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
