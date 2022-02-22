//
//  AutismApp.swift
//  Autism
//
//  Created by Mariano Piscitelli on 16/02/22.
//

import SwiftUI

@main
struct AutismApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Navigation()
                .environmentObject(UserStore())
        }
    }
}
