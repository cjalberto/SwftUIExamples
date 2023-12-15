//
//  TabView.swift
//  estudiando
//
//  Created by Carlos Jaramillo on 11/13/23.
//

import SwiftUI

struct TabView1: View {
    var body: some View {
        TabView {
            HomeView()
                .padding()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            ProfileView()
                .padding()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .tint(Color.red)
    }
}


struct TabView2: View {
    var body: some View {
        TabView {
            HomeView()
                .padding()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            ProfileView()
                .padding()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
            DashboardView()
                .padding()
                .tabItem {
                    Image(systemName: "light.panel.fill")
                    Text("Dashboard")
                }
            SettingsView()
                .padding()
                .tabItem {
                    Image(systemName: "slider.horizontal.2.square")
                    Text("Settings")
                }
        }
        .tint(Color.red)
        .tabViewStyle(.page)
        .background(Color.yellow)
        .frame(height: 600)
    }
}

#Preview {
    TabView1()
}

struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("home")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Profile")
        }
    }
}

struct DashboardView: View {
    var body: some View {
        VStack {
            Image(systemName: "light.panel.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("dashboard")
        }
    }
}

struct SettingsView: View {
    var body: some View {
        VStack {
            Image(systemName: "slider.horizontal.2.square")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("settings")
        }
    }
}
