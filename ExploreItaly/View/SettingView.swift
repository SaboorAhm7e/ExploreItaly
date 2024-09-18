//
//  SettingView.swift
//  ExploreItaly
//
//  Created by Saboor on 30/08/2024.
//

import SwiftUI

struct SettingView: View {
    @State var language : String = "English"
    @State var darkMode : Bool = false
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Language", selection: $language) {
                        Text("English").tag("English")
                        Text("Arabic").tag("Arabic")
                    }
                    
                    Toggle("Dark Mode", isOn: $darkMode)
                    Button("Clear Persistence Storage"){}
                } header: {
                    Text("Controls")
                }
                
                Section(header:Text("About App")) {
                    LabeledContent("Developer", value: "Saboor Ahmad")
                    LabeledContent("Version", value: "1.0")
                    LabeledContent("Link") {
                        Link("Explore Italy", destination: URL(string: "https://github.com/SaboorAhm7e/ExploreItaly")!)
                    }

                }

            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingView()
}
