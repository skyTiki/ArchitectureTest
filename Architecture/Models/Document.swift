//
//  Document.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import Foundation

struct Document: Identifiable, Equatable {
    let id = UUID().uuidString
    var title: String
    var content: String
}

extension Document {
    static func getDocuments() -> [Document] {
        return [
            Document(title: "aaaa", content: "content aaaa"),
            Document(title: "bbbb", content: "content bbb"),
            Document(title: "cccc", content: "content cccc"),
            Document(title: "dddd", content: "content dddd"),
            Document(title: "eeee", content: "content eeee")
        ]
    }
}
