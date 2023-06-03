//
//  ContentView.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    VStack {
                        Image(systemName: "doc.fill")
                        Text("List")
                    }
                }
            SettingView()
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
    }
}
