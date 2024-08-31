//
//  HomeView.swift
//  ExploreItaly
//
//  Created by Saboor on 30/08/2024.
//

import SwiftUI

struct HomeView: View {
    var cities = ["Rome","Milan","Venice"]
    var body: some View {
        NavigationView {
            VStack {
                // Banner
                Image("cover")
                    .resizable()
                    .scaledToFit()
                // Section Header
                SectionHeaderView(sectionTitle: "Cities", completion: {
                    print("see all cities")
                })
                ScrollView(.horizontal,showsIndicators:false) {
                    HStack(spacing:10) {
                        ForEach(cities,id:\.self) { city in
                            ZStack(alignment:.bottomLeading) {
                                Image(city)
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                Text(city)
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
                
                
                
               
                
                
                SectionHeaderView(sectionTitle: "Places", completion: {
                    print("see all places")
                })
                
                
                Spacer()
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
