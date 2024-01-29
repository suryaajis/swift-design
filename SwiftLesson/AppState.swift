//
//  AppState.swift
//  SwiftLesson
//
//  Created by Surya Aji on 28/01/24.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var isLogin: Bool

    init(isLogin: Binding<Bool>) {
        _isLogin = Published(initialValue: isLogin.wrappedValue)
    }
}
