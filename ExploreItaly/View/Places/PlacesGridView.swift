//
//  PlacesGridView.swift
//  ExploreItaly
//
//  Created by Saboor on 04/09/2024.
//

import SwiftUI

struct PlacesGridView: View {
    let places : [PlaceModel] = Bundle.main.decode([PlaceModel].self, from: "Places.json")
    let colum = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        VStack {
            ScrollView(.vertical,showsIndicators: false) {
                LazyVGrid(columns:colum) {
                    ForEach(places,id: \.place_id) { item in
                        NavigationLink {
                            PlaceDetailView(name: item)
                        } label: {
                            ZStack {
                                Color.secondary.opacity(0.5)
                                VStack(alignment:.center,spacing: 0) {
                                    Image(item.place_cover)
                                        .resizable()
                                        .frame(height:200)
                                    
                                    Text(item.place_name)
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .foregroundStyle(Color.white)
                                }
                                
                                .padding(.bottom,10)
                            
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(color: .gray.opacity(0.5), radius: 5,x: 0,y: 0)
                            .padding(3)
                        }

                    }
                }
            }
        }
        .padding(.horizontal,5)
        .navigationTitle("Places")
    }
}

#Preview {
    PlacesGridView()
}
