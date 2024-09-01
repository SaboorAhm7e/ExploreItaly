//
//  PlaceItemView.swift
//  ExploreItaly
//
//  Created by Saboor on 01/09/2024.
//

import SwiftUI

struct PlaceItemView: View {
    var image : String = "Rome"
    var name : String = "Florida Meseum Los Angleous NY"
    var body: some View {
        ZStack(alignment:.top) {
            Color.white
            
            VStack(alignment:.leading,spacing: 1) {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width:180,height:180)
                Text(name)
                    .lineLimit(nil)
                    .lineSpacing(-80)
                    .multilineTextAlignment(.leading)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.secondary)
                    .padding(.leading,5)
            }
           
        }
        .frame(width:180,height:240)
        .clipped()
        .cornerRadius(20)
        .shadow(color:Color.gray.opacity(0.5),radius:10)
    }
}

#Preview {
    PlaceItemView()
}
