//
//  ContentView.swift
//  ExploreItaly
//
//  Created by Saboor on 30/08/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("showTabBar") var showTabBar : Bool = true
    @State private var currentIndex : Int = 1
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            FavoriteView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorite")
                }
            SettingView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Setting")
                }
        }
        
    }
}

#Preview {
    ContentView()
}
