//
//  ContentView.swift
//  ExploreItaly
//
//  Created by Saboor on 30/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var currentIndex : Int = 1
    var body: some View {
        
            ZStack(alignment:.bottom) {
                if currentIndex == 0 {
                    FavoriteView()
                } else if currentIndex == 1 {
                    HomeView()
                } else {
                    SettingView()
                }
                
                
                CustomTabBar(currentIndex:$currentIndex)
                    .offset(y:-20)
                    
                
            }
        
    }
}

#Preview {
    ContentView()
}
