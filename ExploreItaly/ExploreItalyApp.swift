//
//  ExploreItalyApp.swift
//  ExploreItaly
//
//  Created by Saboor on 30/08/2024.
//

import SwiftUI

@main
struct ExploreItalyApp: App {
    @AppStorage("showsOnboarding") var showOnboarding : Bool = true
    var body: some Scene {
        WindowGroup {
            if showOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
