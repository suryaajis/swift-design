//
//  AccountView.swift
//  SwiftLesson
//
//  Created by Surya Aji on 28/01/24.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        ZStack {
            BackgroundImage()
            AccountNav()
        }
    }
}

struct BackgroundImage: View {
    var body: some View {
        Image("white-bg")
            .resizable()
            .edgesIgnoringSafeArea(.all)
    }
}

struct AccountNav: View {
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        NavigationView {
            Form {
                ProfileSection()
                GeneralSettingsSection()
                AccountSettingsSection()
            }
            .navigationTitle("Account")
        }
    }
}

struct ProfileSection: View {
    var body: some View {
        Section {
            NavigationLink(destination: DummyView()) {
                // Profile content
                HStack(spacing:20) {
                    Image("profile")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("Nilam").font(.headline)
                        Text("Content Creator").font(.caption)
                    }
                }
                .padding(.top, 5)
                .padding(.bottom, 5)
            }
        }
    }
}

struct GeneralSettingsSection: View {
    var body: some View {
        Section(header: Text("Pengaturan Umum")) {
            NavigationLink(destination: DummyView()) {
                // General settings content
                HStack(spacing:20) {
                    Image(systemName: "star.fill")
                        .frame(width: 35, height: 35)
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                        .cornerRadius(10)
                    
                    Text("Bookmarks")
                }
                .padding(.vertical, 2)
            }
            NavigationLink(destination: DummyView()) {
                // Another general setting
                HStack(spacing:20) {
                    Image(systemName: "tv")
                        .frame(width: 35, height: 35)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .cornerRadius(10)
                    
                    Text("System")
                }
                .padding(.vertical, 2)
            }
        }
    }
}

struct AccountSettingsSection: View {
    var body: some View {
        Section(header: Text("Pengaturan Akun")) {
            NavigationLink(destination: DummyView()) {
                // Account settings content
                HStack(spacing:20) {
                    Image(systemName: "person")
                        .frame(width: 35, height: 35)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                    Text("Account")
                }
                .padding(.vertical, 2)
            }
            NavigationLink(destination: DummyView()) {
                // Another account setting
                HStack(spacing:20) {
                    Image(systemName: "phone")
                        .frame(width: 35, height: 35)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .cornerRadius(10)
                    
                    Text("Contact")
                }
                .padding(.vertical, 2)
            }
            LogoutButton()
        }
    }
}

struct LogoutButton: View {
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "power")
                .frame(width: 35, height: 35)
                .foregroundColor(Color.white)
                .background(Color.red)
                .cornerRadius(10)
            
            Text("Logout")
        }
        .padding(.vertical, 2)
        .onTapGesture {
            print(appState.isLogin)
            appState.isLogin = false
            print(appState.isLogin)
        }
    }
}


struct DummyView: View {
    var body: some View {
        Text("Dummy View")
    }
}

