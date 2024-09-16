//
//  PlacesGridView.swift
//  ExploreItaly
//
//  Created by Saboor on 04/09/2024.
//

import SwiftUI

struct PlacesGridView: View {
    let places : [PlaceModel] = Bundle.main.decode([PlaceModel].self, from: "Places.json")
    let categories : [String] = ["Messum","Fountain","Resturant","Monument","Hotal","Casino","Spa"]
    let colum = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        VStack(spacing:10) {
            ScrollView(.horizontal,showsIndicators: false) {
                HStack {
                    ForEach(categories,id: \.self) { item in
                        Button {
                            print("\(item)")
                        } label: {
                            Text(item)
                            
                        }
                        .tint(Color.white)
                        .padding(.vertical,4)
                        .padding(.horizontal,10)
                        .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray.opacity(0.5))
                        )
                        

                    }
                }
            }
            
            ScrollView(.vertical,showsIndicators: false) {
                LazyVGrid(columns:colum) {
                    ForEach(places,id: \.place_id) { item in
                        NavigationLink {
                            PlaceDetailView(name: item)
                        } label: {
                            PlaceItemView(image: item.place_cover, name: item.place_name)
                        }

                    }
                }
            }
        }
        .padding(.horizontal,10)
        .navigationTitle("Places")
    }
}

#Preview {
    PlacesGridView()
}
