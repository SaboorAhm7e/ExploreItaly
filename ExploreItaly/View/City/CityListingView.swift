//
//  CityListingView.swift
//  ExploreItaly
//
//  Created by Saboor on 02/09/2024.
//

import SwiftUI

struct CityListingView: View {
    var cities : [String] = ["Rome","Milan","Venice"]
    var body: some View {
        List {
            ForEach(cities,id: \.self) { item in
                NavigationLink {
                    CityDetailView(name: item)
                } label: {
                    HStack(alignment:.top) {
                        Image(item)
                            .resizable()
                            .frame(width:70,height: 70)
                            .cornerRadius(20)
                        VStack(alignment:.leading) {
                            Text(item)
                                .font(.headline)
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit enim eget ex cursus condimentum. Maecenas nulla massa, finibus laoreet varius vel, congue in turpis. Sed iaculis porta egestas. Donec eu feugiat arcu. Aliquam ligula orci, fermentum porta urna id, posuere maximus ex. Nunc a turpis metus. Phasellus vel scelerisque ante. Sed id velit pellentesque, malesuada velit quis, molestie orci. Donec dolor tortor, finibus quis tortor ut, finibus ullamcorper magna.")
                                .font(.caption)
                                .lineLimit(2)
                        }
                    }
                }

            
            }
            .listRowSeparator(.hidden)
        } //: List
        .listStyle(.inset)
        .navigationTitle("Cities")
    }
}

#Preview {
    CityListingView()
}
