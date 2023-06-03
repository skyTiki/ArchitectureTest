//
//  User.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import Foundation

struct User {
    let id = UUID().uuidString
    var name: String
    var description: String
}

extension User {
    static func fetchUser(id: Int) -> User {
        return User(name: "テストユーザー", description: "最近iOSアプリ開発をしています。サッカーが好きです。")
    }
}
