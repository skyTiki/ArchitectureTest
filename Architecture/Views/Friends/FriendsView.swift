//
//  FriendsView.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import SwiftUI

struct FriendsView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List(modelData.friends) { friend in
                Text(friend.name)
            }
            
            .navigationTitle("Friends")
        }
        .onAppear {
            modelData.fetchFriends()
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
            .environmentObject(ModelData())
    }
}
