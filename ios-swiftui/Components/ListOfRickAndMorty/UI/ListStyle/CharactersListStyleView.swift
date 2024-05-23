//
//  CharactersList.swift
//  ios-swiftui
//

import SwiftUI

struct CharactersListStyleView: View {
    @StateObject private var viewModel = CharacterListViewModel()

    var body: some View {
        List(viewModel.characters) { character in
            CharactersListRowView(character: character)
        }.listStyle(.plain)
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

struct CharactersListStyleView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView()
    }
}
