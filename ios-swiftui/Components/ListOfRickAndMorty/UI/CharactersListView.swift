//
//  CharactersList.swift
//  ios-swiftui
//
//  Created by Fernando Salom Carratala on 7/1/23.
//

import SwiftUI

struct CharactersListView: View {
    @StateObject private var viewModel = CharacterListViewModel()

    var body: some View {
        List(viewModel.characters) { character in
            CharactersListRowView(character: character)
        }
        .navigationTitle("Characters")
        .onAppear {
            viewModel.fetchCharacters()
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
        .onAppear(perform: {
            viewModel.currentPage += 1
        })
    }
}

struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView()
    }
}
