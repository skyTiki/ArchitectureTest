//
//  FriendsView.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import SwiftUI

struct FriendsView: View {
    let friends: [User]
    
    var body: some View {
        NavigationView {
            List(friends) { friend in
                Text(friend.name)
            }
            
            .navigationTitle("Friends")
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView(friends: [User(name: "aaa", description: "aaaaa")])
    }
}
