//
//  FavoriteView.swift
//  ExploreItaly
//
//  Created by Saboor on 30/08/2024.
//

import SwiftUI

struct FavoriteView: View {
    @State var isFavorite : Bool = false
    @State var showList : Bool = false
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators:false) {
                LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())], content: {
                    ForEach(0..<6,id:\.self) { item in
                    
                        ZStack(alignment:.topTrailing) {
                            Image("Rome")
                                .resizable()
                                .frame(height:200)
                                .cornerRadius(12)
                            Button {
                                isFavorite.toggle()
                            } label: {
                                Image(systemName: isFavorite ? "heart.fill": "heart")
                                    .foregroundStyle(Color.red)
                            }
                            .padding(5)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color:.black.opacity(0.5),radius: 5,x:0,y:0)
                            .offset(x:-5,y:5)

                        }
                        .overlay(alignment: .bottom) {
                            Text("Milan")
                                .font(.title2)
                                .fontWeight(.bold)
                                .fontDesign(.rounded)
                                .foregroundStyle(Color.white)
                                .shadow(color:.black.opacity(0.7),radius: 7,x:0,y:0)
                        }
                    }
                })
            }
            .padding(.horizontal)
            .navigationTitle("Favorites")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showList.toggle()
                    } label: {
                        Image(systemName: showList ? "square.grid.2x2.fill" :"square.fill.text.grid.1x2")
                    }

                }
            }
        }
    }
}

#Preview {
    FavoriteView()
}
