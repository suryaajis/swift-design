//
//  SwiftLessonApp.swift
//  SwiftLesson
//
//  Created by Surya Aji on 27/01/24.
//

import SwiftUI

@main
struct SwiftLessonApp: App {
    @AppStorage("isLogin") var isLogin: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AppState(isLogin: $isLogin))
        }
    }
}
