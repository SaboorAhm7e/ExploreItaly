//
//  CityHeroView.swift
//  ExploreItaly
//
//  Created by Saboor on 14/09/2024.
//

import SwiftUI

struct CityHeroView: View {
    var image : String = ""
    var name : String = ""
    var body: some View {
        ZStack(alignment:.bottomLeading) {
            Image(image)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
            Text(name)
                .font(.title2)
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .foregroundStyle(Color.white)
                .shadow(color: .black.opacity(0.7), radius: 10,x:5,y:5)
                .offset(x:10)
        }
        .frame(width:270,height:100)
        .padding(0)
        .shadow(color:.gray.opacity(0.5),radius: 5,x:0,y:0)
    }
}

#Preview {
    CityHeroView()
}
