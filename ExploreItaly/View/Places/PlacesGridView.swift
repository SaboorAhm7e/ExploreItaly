//
//  PlacesGridView.swift
//  ExploreItaly
//
//  Created by Saboor on 04/09/2024.
//

import SwiftUI

struct PlacesGridView: View {
    let colum = [GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        VStack {
            ScrollView(.vertical,showsIndicators: false) {
                LazyVGrid(columns:colum) {
                    ForEach(0...7,id: \.self) { item in
                        NavigationLink {
                            PlaceDetailView(name: "Milan")
                        } label: {
                            ZStack {
                                Color.white
                                VStack(alignment:.leading,spacing: 0) {
                                    Image("Milan")
                                        .resizable()
                                        //.scaledToFit()
                                        .frame(height:200)
                                    Text("Milan")
                                        .font(.title3)
                                        .fontWeight(.bold)
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
