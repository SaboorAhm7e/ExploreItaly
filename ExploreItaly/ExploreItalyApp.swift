//
//  ExploreItalyApp.swift
//  ExploreItaly
//
//  Created by Saboor on 30/08/2024.
//

import SwiftUI

@main
struct ExploreItalyApp: App {
    @AppStorage("selectedAppearance") var selectedAppearance : Bool = false
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(selectedAppearance ? .dark : .light)
        }
    }
}
