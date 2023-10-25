//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by Teameverywhere on 10/25/23.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
