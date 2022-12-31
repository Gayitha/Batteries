//
//  SettingsView.swift
//  Batteries
//
//  Created by Gayitha Dammiya on 2022-12-27.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Form {
                Section (header: Text("Appearance")) {
                    List {
                        NavigationLink (destination: Text("App Theme\nAllow user to switch between Light mode, Dark mode, and System default")) {
                            Image(systemName: "circle.lefthalf.filled")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                .symbolRenderingMode(.palette)
                                .foregroundColor(Color(UIColor.black))
                            Text("App Theme")
                        }
                        NavigationLink (destination: Text("Accent Color\nAllow the user to change accent color from a list of system colors")) {
                            Image(systemName: "paintpalette.fill")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                .symbolRenderingMode(.multicolor)
                                .foregroundColor(Color(UIColor.black))
                            Text("Accent Color")
                        }
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
