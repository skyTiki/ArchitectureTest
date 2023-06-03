//
//  User.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import Foundation

protocol UserModelImpl {
    func fetchMyAccount(id: Int) -> User
    func fetchFriendsAccount(myId: Int) -> [User]
}

struct UserModel: UserModelImpl {
    func fetchMyAccount(id: Int) -> User {
        User(name: "テストユーザー", description: "最近iOSアプリ開発をしています。サッカーが好きです。")
    }
    
    func fetchFriendsAccount(myId: Int) -> [User] {
        [
            User(name: "友達1", description: "運動不足〜"),
            User(name: "友達2", description: "綺麗な景色を見るのが好き")
        ]
    }
}

struct User: Identifiable {
    let id = UUID().uuidString
    var name: String
    var description: String
}
