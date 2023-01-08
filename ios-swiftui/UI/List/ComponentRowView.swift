//
//  ComponentRowView.swift
//  ios-swiftui
//
//  Created by Fernando Salom Carratala on 7/1/23.
//

import SwiftUI

struct ComponentListRowView: View {
    let menuOption: MenuOption

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(menuOption.name)
                    .font(.title3)
                    .foregroundColor(.accentColor)
                    .redacted(reason: menuOption.name.isEmpty ? .placeholder : [])
            }
        }
    }
}

struct ComponentListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ComponentListRowView(menuOption: .init(name: "Lista"))
            ComponentListRowView(menuOption: .init(name: "Detalle"))
        }
    }
}
