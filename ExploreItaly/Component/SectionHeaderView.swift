//
//  SectionHeaderView.swift
//  ExploreItaly
//
//  Created by Saboor on 31/08/2024.
//

import SwiftUI

struct SectionHeaderView: View {
    var sectionTitle = ""
    var completion : (()-> ())?
    var body: some View {
        HStack {
            Text(sectionTitle)
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            Button {
                completion!()
            } label: {
                Text("See All")
                Image(systemName: "chevron.right")
            }
        }
    }
}

#Preview {
    SectionHeaderView()
}
