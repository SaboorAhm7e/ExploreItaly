//
//  ImageSlider.swift
//  ExploreItaly
//
//  Created by Saboor on 13/09/2024.
//

import SwiftUI

struct ImageSlider: View {
    let arr = ["Colosseum-cover","Piazza-Navona-cover","Trevi-Fountain-cover"]
    @State var selectedIndex : Int = 0
    var body: some View {
        ZStack(alignment:.bottomTrailing) {
            TabView(selection:$selectedIndex) {
                ForEach(arr.indices,id: \.self) { index in
                Image(arr[index])
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .tag(index)
                    
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .cornerRadius(15)
            
            HStack(spacing:3) {
                ForEach(arr.indices,id: \.self) { index in
                 Circle()
                        .fill(index == selectedIndex ? Color.white : Color.gray)
                        .animation(.spring(.bouncy, blendDuration: 0.5),value: index)
                        .frame(width:10,height: 10)
                        
                }
            }
            .padding(.vertical,5)
            .padding(.horizontal,10)
            .background(.ultraThinMaterial)
            .clipShape(Capsule())
            .offset(x:-5,y: -5)

        }
      
       // .frame(height:200)
    }
}

#Preview {
    ImageSlider()
}
