//
//  QuizAppApp.swift
//  QuizApp
//
//  Created by dit-user on 2024/05/20.
//

import SwiftUI

@main
struct QuizAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
