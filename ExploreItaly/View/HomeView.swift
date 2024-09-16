//
//  HomeView.swift
//  ExploreItaly
//
//  Created by Saboor on 30/08/2024.
//

import SwiftUI

struct HomeView: View {
    @State var mode = false

    // MARK: - properties
    let cities : [CityModel] = Bundle.main.decode([CityModel].self, from: "Cities.json")
    let places : [PlaceModel] = Bundle.main.decode([PlaceModel].self, from: "Places.json")
    @State private var path = [String]()
    
    @AppStorage("selectedAppearance") var selectedAppearance : Bool = false
    @Environment(\.colorScheme) var colorScheme
    // MARK: - body
    var body: some View {
        NavigationStack(path: $path) {
            ScrollView(.vertical,showsIndicators:false) {
                VStack(spacing:5) {
                    // Banner
//                    Image("cover")
//                        .resizable()
//                        .scaledToFit()
                    ImageSlider()
                        .frame(height:180)
                    // Section Header
                    
                    SectionHeaderView(sectionTitle: "Cities") {
                        path.append("Cities")
                    }
                    
                    ScrollView(.horizontal,showsIndicators:false) {
                        HStack(spacing:10) {
                            ForEach(0...4,id:\.self) { i in
                                
                                CityHeroView(image: cities[i].city_cover, name: cities[i].city_name)
                            }
                          
                        }
                        //.padding(.bottom,10)
                    }
                    
                    
                    
                   
                    //PlacesGridView
                    
                    SectionHeaderView(sectionTitle: "Places") {
                        path.append("Places")
                    }

                    ScrollView(.horizontal,showsIndicators:false) {
                        HStack(spacing:10) {
                            ForEach(places,id:\.place_id) { place in
                                PlaceItemView(image: place.place_cover, name: place.place_name)
                                    .frame(width:180)
                            }
                        }
                        .frame(height:230)
                    }
                    
                   
                    

                }
            }
            .navigationDestination(for: String.self){ value in
                if value == "Cities" {
                    CityListingView()
                } else if value == "Places" {
                    PlacesGridView()
                }
            }
            
            .padding(.horizontal)
            .navigationTitle("Explore Italy 🇮🇹")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        //mode.toggle()
                        selectedAppearance.toggle()
                    } label: {
                        Image(systemName: selectedAppearance ? "sun.max" : "moon.stars")
                            .symbolRenderingMode(.palette)
                            .symbolEffect(.pulse, options: .default, value: selectedAppearance)
                    }

                }
            }
        }
        
    }
}

#Preview {
    HomeView()
}
