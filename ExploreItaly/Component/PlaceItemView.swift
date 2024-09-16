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
        ZStack {
            Color.secondary.opacity(0.5)
            VStack(alignment:.center,spacing: 0) {
                Image(image)
                    .resizable()
                    
                    .frame(height:180)
                
                Text(name)
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

#Preview {
    PlaceItemView()
}
