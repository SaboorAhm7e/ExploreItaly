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
        
            ZStack(alignment:.bottom) {
                if currentIndex == 0 {
                    FavoriteView()
                } else if currentIndex == 1 {
                    HomeView(showTabBar:$showTabBar)
                } else {
                    SettingView()
                }
                
                if showTabBar {
                    CustomTabBar(currentIndex:$currentIndex)
                        .offset(y:-10)
                }
                
                    
                
            }
            .animation(.easeInOut, value: showTabBar)
        
    }
}

#Preview {
    ContentView()
}
