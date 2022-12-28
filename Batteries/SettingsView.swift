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
                        NavigationLink (destination: Text("App Theme")) {
                            Image(systemName: "circle.lefthalf.filled")
                                .symbolRenderingMode(.palette)
                                .foregroundColor(Color(UIColor.black))
                            Text("App Theme")
                        }
                        NavigationLink (destination: Text("Accent Color")) {
                            Image(systemName: "paintpalette.fill")
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
