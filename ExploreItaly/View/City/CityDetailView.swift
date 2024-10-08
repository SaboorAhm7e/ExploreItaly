//
//  CityDetailView.swift
//  ExploreItaly
//
//  Created by Saboor on 02/09/2024.
//

import SwiftUI

struct CityDetailView: View {
    
    var city : CityModel?
    var places : [PlaceModel] = []
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack {
                Image(city?.city_cover ?? "Rome")
                    .resizable()
                    .frame(height: 200)
                HStack {
                    Text("About \(city?.city_name ?? "")")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit enim eget ex cursus condimentum. Maecenas nulla massa, finibus laoreet varius vel, congue in turpis. Sed iaculis porta egestas. Donec eu feugiat arcu. Aliquam ligula orci, fermentum porta urna id, posuere maximus ex. Nunc a turpis metus. Phasellus vel scelerisque ante. Sed id velit pellentesque, malesuada velit quis, molestie orci. Donec dolor tortor, finibus quis tortor ut, finibus ullamcorper magna.")
              
                GroupBox {
                    
                    DisclosureGroup(
                        content: {
                            GroupBox {
                                VStack {
                                    LabeledContent("Area", value: "1,283 Km²")
                                    LabeledContent("City Code", value: "+051")
                                    LabeledContent("Population", value: "38,000")
                                }
                            }
                        },
                        label: {
                            HStack {
                                Image(systemName: "info.circle")
                                Text("General Info")
                            }
                        }
                    )
                    .font(.body)
                    .fontWeight(.bold)
                    
                }
               
               
                if !places.isEmpty {
                    HStack {
                        Text("Places in \(city?.city_name ?? "")")
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
                            .tint(Color.blue)
                        }
                        
                    }
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing:15) {
                            ForEach(places,id: \.place_name) { item in
                                NavigationLink {
                                    PlaceDetailView(name: item)
                                } label: {
                                    VStack(alignment:.leading,spacing: 0) {
                                        Image(item.place_cover)
                                            .resizable()
                                        Text(item.place_name)
                                            .padding(.leading,2)
                                           // .foregroundStyle(Color.white)
                                            .frame(height:30)
                                            .font(.system(size: 14))
                                    }
                                    
                                    .frame(width:90,height: 130)
                                    .background {
                                        Color.secondary.opacity(0.5)
                                    }
                                    .cornerRadius(10)
                                }

                               
                            }
                        }
                        
                        .clipped()
                    }
                } else {
                    EmptyView()
                }
              
              
                
                
                Spacer()
            }
        }
        .padding(.horizontal)
        .navigationTitle(city?.city_name ?? "City Name")
    }
}

#Preview {
    CityDetailView()
}
