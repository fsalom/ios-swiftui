//
//  CharactersRowView.swift
//  ios-swiftui
//
//  Created by Fernando Salom Carratala on 7/1/23.
//

import SwiftUI

struct CharactersListRowView: View {
    let character: Character

    var body: some View {
        HStack {
            if let image = character.image,
               let url = URL(string: image) {
                AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 50, height: 50)
                    .background(Color.gray)
                    .clipShape(Circle())
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.gray)
            }
            VStack(alignment: .leading) {
                Text(character.name)
                    .font(.title3)
                    .foregroundColor(.accentColor)
                    .redacted(reason: character.name == nil ? .placeholder : [])
            }
        }
    }
}

struct CharacterListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CharactersListRowView(character: .init(with: CharacterDTO(name: "", image: "")))
            CharactersListRowView(character: .init(with: CharacterDTO(name: "", image: "")))
        }
    }
}
