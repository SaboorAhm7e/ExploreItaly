//
//  FavoriteView.swift
//  ExploreItaly
//
//  Created by Saboor on 30/08/2024.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .padding(.horizontal)
            .navigationTitle("Favorites❤️")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("dark mode / light mode")
                    } label: {
                        Image(systemName: "grid")
                    }

                }
            }
        }
    }
}

#Preview {
    FavoriteView()
}
