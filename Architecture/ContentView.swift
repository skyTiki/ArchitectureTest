//
//  ContentView.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    VStack {
                        Image(systemName: "doc.fill")
                        Text("List")
                    }
                }
            FriendsView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.3.fill")
                        Text("Friends")
                    }
                }
            SettingView(user: $modelData.user)
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Setting")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
