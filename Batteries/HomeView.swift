//
//  HomeView.swift
//  Batteries
//
//  Created by Gayitha Dammiya on 2022-12-27.
//

import SwiftUI

struct DeviceList: Identifiable {
    let id = UUID()
    var name: String
    var icon: String
    var battery: Int
}

func deviceCount() -> Int {
    var count = 0
    
    for _ in Devices {
        count += 1
    }
    
    return count
}

struct HomeView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Overview")) {
                    List {
                        HStack{
                            Text("Device Count:")
                                .font(.body)
                            Spacer()
                            Text(String(deviceCount()))
                                .font(.body)
                        }
                        NavigationLink(destination: SettingsView()) {
                            HStack{
                                Text("Last Update:")
                                    .font(.body)
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text("10:00 AM EST")
                                        .font(.footnote)
                                    Text("January 1, 2022")
                                        .font(.footnote)
                                }
                            }
                        }
                    }
                }
                Section(header: Text("All Devices")) {
                    List {
                        ForEach(Devices) { item in
                            NavigationLink(destination: Text(item.name)) {
                                Image(systemName: item.icon)
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40.0, height: 40.0)
                                VStack(alignment: .leading) {
                                    Text(item.name)
                                    HStack {
                                        if (item.battery <= 5) {
                                            Image(systemName: "battery.0")
                                                .symbolRenderingMode(.palette)
                                                .foregroundColor(Color(UIColor.systemRed))
                                        }
                                        else if (item.battery <= 10) {
                                            Image(systemName: "battery.25")
                                                .symbolRenderingMode(.palette)
                                                .foregroundColor(Color(UIColor.systemRed))
                                        }
                                        else if (item.battery <= 20) {
                                            Image(systemName: "battery.25")
                                                .symbolRenderingMode(.palette)
                                                .foregroundColor(Color(UIColor.systemYellow))
                                        }
                                        else if (item.battery <= 50) {
                                            Image(systemName: "battery.50")
                                                .symbolRenderingMode(.palette)
                                                .foregroundColor(Color(UIColor.label))
                                        }
                                        else if (item.battery <= 75) {
                                            Image(systemName: "battery.75")
                                                .symbolRenderingMode(.palette)
                                                .foregroundColor(Color(UIColor.label))
                                        }
                                        else if (item.battery <= 100) {
                                            Image(systemName: "battery.100")
                                                .symbolRenderingMode(.palette)
                                                .foregroundColor(Color(UIColor.label))
                                        }
                                        Text(String(item.battery) + "%")
                                            .font(.footnote)
                                    }
                                }
                                .padding(.leading)
                            }
                            .padding(.vertical)
                        }
                    }
                }
            }
            .navigationTitle("Devices")
        }
        .searchable(text: $searchText, prompt: "Search for device")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
