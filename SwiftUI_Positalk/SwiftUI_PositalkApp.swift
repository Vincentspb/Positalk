//
//  SwiftUI_PositalkApp.swift
//  SwiftUI_Positalk
//
//  Created by Vincents Putra Barata on 27/07/22.
//

import SwiftUI

@main
struct SwiftUI_PositalkApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
