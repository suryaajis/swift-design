//
//  ContentView.swift
//  SwiftLesson
//
//  Created by Surya Aji on 29/01/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        NavigationView {
            if appState.isLogin {
                AccountView()
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AppState(isLogin: .constant(false)))
    }
}
