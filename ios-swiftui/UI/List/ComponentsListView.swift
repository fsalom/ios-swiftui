//
//  ListView.swift
//  ios-swiftui
//
//  Created by Fernando Salom Carratala on 7/1/23.
//

import Foundation
import SwiftUI

struct ComponentsListView: View {
    @StateObject private var viewModel = ComponentsListViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.components) { component in
                NavigationLink(destination: CharactersListView()) {
                    ComponentListRowView(menuOption: component)
                }
            }
            .onAppear(perform: {
                viewModel.load()
            }).navigationViewStyle(.stack)
        }
    }

    private var nextPageView: some View {
        HStack {
            Spacer()
            VStack {
                ProgressView()
                Text("Loading next page...")
            }
            Spacer()
        }
    }
}

struct ComponentsListView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsListView()
    }
}
