//
//  ios_swiftuiApp.swift
//  ios-swiftui
//
//  Created by Fernando Salom Carratala on 5/1/23.
//

import SwiftUI

@main
struct ios_swiftuiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
