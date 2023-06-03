//
//  User.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import Foundation

protocol UserModelImpl {
    func fetchUser(id: Int) -> User
}

struct UserModel: UserModelImpl {
    func fetchUser(id: Int) -> User {
        User(name: "テストユーザー", description: "最近iOSアプリ開発をしています。サッカーが好きです。")
    }
}

struct User {
    let id = UUID().uuidString
    var name: String
    var description: String
}
