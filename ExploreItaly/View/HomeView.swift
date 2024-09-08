//
//  HomeView.swift
//  ExploreItaly
//
//  Created by Saboor on 30/08/2024.
//

import SwiftUI

struct HomeView: View {

    // MARK: - properties
    let cities : [CityModel] = Bundle.main.decode([CityModel].self, from: "Cities.json")
    let places : [PlaceModel] = Bundle.main.decode([PlaceModel].self, from: "Places.json")
    // MARK: - body
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators:false) {
                VStack {
                    // Banner
                    Image("cover")
                        .resizable()
                        .scaledToFit()
                    // Section Header
                    
                    HStack {
                        Text("Cities")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        NavigationLink {
                            CityListingView()
                        } label: {
                            HStack {
                                Text("See All")
                                Image(systemName: "chevron.right")
                            }
                        }
                        
                    }
                    
                    ScrollView(.horizontal,showsIndicators:false) {
                        HStack(spacing:10) {
                            ForEach(0...4,id:\.self) { i in
                                ZStack(alignment:.bottomLeading) {
                                    Image(cities[i].city_cover)
                                        .resizable()
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                    Text(cities[i].city_name)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .fontDesign(.rounded)
                                        .foregroundStyle(Color.white)
                                        .shadow(color: .black.opacity(0.7), radius: 10,x:5,y:5)
                                        .offset(x:10)
                                }
                                .frame(width:270,height:100)
                                .padding(0)
                                .shadow(color:.black.opacity(0.5),radius: 5,x:5,y:5)
                                
                            }
                          
                        }
                        .padding(.bottom,10)
                    }
                    
                    
                    
                   
                    //PlacesGridView
                    
                    HStack {
                        Text("Places")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        NavigationLink {
                            PlacesGridView()
                        } label: {
                            HStack {
                                Text("See All")
                                Image(systemName: "chevron.right")
                            }
                        }
                        
                    }
                    
                    
                   
                    
                    ScrollView(.horizontal,showsIndicators:false) {
                        HStack(spacing:10) {
                            ForEach(places,id:\.place_id) { place in
                                PlaceItemView(image: place.place_cover, name: place.place_name)
                            }
                        }
                        .frame(height:260)
                    }
                    
                   
                    

                }
            }
            
            .padding(.horizontal)
            .navigationTitle("Explore Italy 🇮🇹")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("dark mode / light mode")
                    } label: {
                        Image(systemName: "moon")
                    }

                }
            }
        }
        
    }
}

#Preview {
    HomeView()
}
