//
//  SwiftUI_PositalkApp.swift
//  SwiftUI_Positalk
//
//  Created by Vincents Putra Barata on 27/07/22.
//

import SwiftUI

@main struct SwiftUI_PositalkApp: App {
    
    
    var body: some Scene {
        WindowGroup {
            SceneSwitcher()
        }
    }
}

enum CurrentView: Int {
    case onboarding
    case addname
    case main
}

class AppState: ObservableObject {
    @AppStorage("scene") var switchScene = CurrentView.onboarding
//    @Published var switchScene = CurrentView.main
    @AppStorage("nickname") var nickname = ""
}

struct SceneSwitcher: View {
    @StateObject var appState = AppState()
    let persistenceController = PersistenceController.shared
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    var body: some View {
        Group {
            switch(appState.switchScene) {
            case .onboarding:
                BoardingView1()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .environmentObject(appState)
                    .transition(transition)
                
            case .addname:
                BoardingView2()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .environmentObject(appState)
                    .transition(transition)
                
            case .main:
                TabBarView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .environmentObject(appState)
                    .transition(transition)
            }
        }
        .animation(.default, value: appState.switchScene)
    }
}
