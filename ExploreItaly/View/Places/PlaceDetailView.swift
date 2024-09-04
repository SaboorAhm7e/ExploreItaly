//
//  PlaceDetailView.swift
//  ExploreItaly
//
//  Created by Saboor on 04/09/2024.
//

import SwiftUI

struct PlaceDetailView: View {
    var name = ""
    @State private var isFavorite : Bool = false
    var body: some View {
        VStack {
            Image(name)
                .resizable()
                .frame(height: 200)
            HStack {
                Text("About \(name)")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit enim eget ex cursus condimentum. Maecenas nulla massa, finibus laoreet varius vel, congue in turpis. Sed iaculis porta egestas. Donec eu feugiat arcu. Aliquam ligula orci, fermentum porta urna id, posuere maximus ex. Nunc a turpis metus. Phasellus vel scelerisque ante. Sed id velit pellentesque, malesuada velit quis, molestie orci. Donec dolor tortor, finibus quis tortor ut, finibus ullamcorper magna.")
            Spacer()
        }
        .padding(.horizontal,5)
        .navigationTitle(name)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    isFavorite.toggle()
                } label: {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                }

            }
        }
    }
}

#Preview {
    PlaceDetailView()
}
