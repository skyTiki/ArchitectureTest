//
//  SettingView.swift
//  Architecture
//
//  Created by 市毛隆俊 on 2023/06/03.
//

import SwiftUI

struct SettingView: View {
    @Binding var user: User
    var body: some View {
        VStack {
            Text(user.name)
            Text(user.description)
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
