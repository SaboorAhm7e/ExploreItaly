//
//  SectionHeaderView.swift
//  ExploreItaly
//
//  Created by Saboor on 31/08/2024.
//

import SwiftUI

struct SectionHeaderView: View {
    @Binding var showTabBar : Bool
    var sectionTitle = ""
    var completion : (()-> ())?
    var body: some View {
        HStack {
            Text(sectionTitle)
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            NavigationLink {
                CityListingView(showTabBar: $showTabBar)
            } label: {
                Button {
                    completion!()
                } label: {
                    Text("See All")
                    Image(systemName: "chevron.right")
                }
            }

            
        }
    }
}

//#Preview {
//    SectionHeaderView()
//}
