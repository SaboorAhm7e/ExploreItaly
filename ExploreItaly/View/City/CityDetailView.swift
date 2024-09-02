//
//  CityDetailView.swift
//  ExploreItaly
//
//  Created by Saboor on 02/09/2024.
//

import SwiftUI

struct CityDetailView: View {
    var cities = ["Rome","Milan","Venice"]
    var name : String = "Rome"
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
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
              
                GroupBox {
                    
                    DisclosureGroup(
                        content: {
                            GroupBox {
                                VStack {
                                    LabeledContent("Area", value: "1,283 Km²")
                                    LabeledContent("City Code", value: "+051")
                                    LabeledContent("Population", value: "38,000")
                                }
                            }
                        },
                        label: {
                            HStack {
                                Image(systemName: "info.circle")
                                Text("General Info")
                            }
                        }
                    )
                    .font(.body)
                    .fontWeight(.bold)
                    
                }
               
                HStack {
                    Text("Places in \(name)")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    NavigationLink {
                        CityListingView()
                    } label: {
                        HStack {
                            Text("See All")
                            Image(systemName: "chevron.right")
                        }
                        .tint(Color.blue)
                    }
                    
                }
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing:15) {
                        ForEach(0...4,id: \.self) { item in
                            VStack(alignment:.leading,spacing: 0) {
                                Image("Venice")
                                    .resizable()
                                    .frame(width:90,height: 90)
                                    .clipped()
                                Text("Lorem ipsum dolor sit")
                                    .lineLimit(2)
                                    .lineSpacing(-10)
                                    .padding(.leading,2)
                            }
                            .frame(width:90)
                            .background(
                                RoundedRectangle(cornerRadius: 10).stroke()
                                    
                            )
                            .clipped()
                        }
                    }
                }
              
              
                
                
                Spacer()
            }
        }
        .padding(.horizontal)
        .navigationTitle(name)
    }
}

#Preview {
    CityDetailView()
}
