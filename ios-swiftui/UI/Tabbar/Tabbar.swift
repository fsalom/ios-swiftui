//
//  Tabbar.swift
//  ios-swiftui
//
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            ComponentsListView()
                .tabItem {
                    Label("Characters", systemImage: "person.crop.square.fill.and.at.rectangle")
                }
        }
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
