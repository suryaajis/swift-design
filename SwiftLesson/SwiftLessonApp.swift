//
//  SwiftLessonApp.swift
//  SwiftLesson
//
//  Created by Surya Aji on 27/01/24.
//

import SwiftUI

@main
struct SwiftLessonApp: App {
    @StateObject private var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(appState)
        }
    }
}
