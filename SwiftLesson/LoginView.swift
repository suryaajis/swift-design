//
//  ContentView.swift
//  SwiftLesson
//
//  Created by Surya Aji on 27/01/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            Image("tobias-bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                GlobeView()
                FormBox()
                    .padding(.horizontal, 25)
                    .padding(.vertical, 10)
            }
        }
    }
}

struct GlobeView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .resizable()
                    .foregroundColor(Color.white)
                    .frame(width: 100, height: 100)
                .cornerRadius(20)
            
            Text("Globe App")
                .font(.system(size: 24)).bold()
                .foregroundColor(Color.white)
                .padding(.top, 10)
        }
    }
}

struct FormBox: View {
    @EnvironmentObject private var appState: AppState
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Username").font(.callout).bold()
                .foregroundColor(Color.white)
            TextField("Masukkan username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password").font(.callout).bold()
                .foregroundColor(Color.white)
            SecureField("Masukkan password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                print(appState.isLogin)
                if !username.isEmpty && !password.isEmpty {
                    appState.isLogin = true
                    print(username + ", " + password)
                    print(appState.isLogin)
                    username = ""
                    password = ""
                }
            }) {
                HStack {
                    Text("Sign In")
                    Spacer()
                }
                .padding(.all, 10)
                .background(Color.black)
                .foregroundColor(Color.white)
                .cornerRadius(10)
//                .sheet(isPresented: $appState.isLogin) {
//                    if appState.isLogin {
//                        AccountView().environmentObject(appState)
//                    }
//                }
            }
        }
        .padding(.all, 20)
        .background(Color("iron"))
        .cornerRadius(10)
    }
}
