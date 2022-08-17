//
//  CodeChallegeApp.swift
//  CodeChallege
//
//  Created by Alwin Amoros on 8/17/22.
//

import SwiftUI

@main
struct CodeChallegeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
