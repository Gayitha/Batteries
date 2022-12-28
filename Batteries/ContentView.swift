//
//  ContentView.swift
//  Batteries
//
//  Created by Gayitha Dammiya on 2022-12-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AddView()
                .tabItem {
                    Image(systemName: "plus.app")
                    Text("Add Device")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
