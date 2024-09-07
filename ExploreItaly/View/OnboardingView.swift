//
//  OnboardingView.swift
//  ExploreItaly
//
//  Created by Saboor on 04/09/2024.
//

import SwiftUI
struct OnboardingModel {
    let image : String
    let description : String
}
let onboardingArray : [OnboardingModel] = [
    .init(image: "florence-watercolor", description: "Florence is the capital city of the Italian region of Tuscany."),
    .init(image: "pisa-watercolor", description: "The Leaning Tower of Pisa is bell tower, of Pisa Cathedral."),
    .init(image: "rome-watercolor", description: "The Colosseum is an elliptical amphitheatre Rome")
]
struct OnboardingView: View {
    @AppStorage("showsOnboarding") var showOnboarding : Bool = true
    var body: some View {
            TabView {
                ForEach(onboardingArray,id: \.image) { item in
                    VStack {
                        Text(item.description)
                            .font(.title)
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .overlay(alignment: .topTrailing) {
                Button {
                    showOnboarding.toggle()
                } label: {
                    Image(systemName: "multiply.circle")
                        .imageScale(.large)
                        .font(.title2)
                        .fontWeight(.bold)
                        
                }
                .tint(Color.black)

            }
            .overlay(alignment: .bottom) {
                Button {
                    showOnboarding.toggle()
                } label: {
                    Text("Explore")
                    Image(systemName: "arrow.right")
                        
                }
                .font(.title2)
                .fontWeight(.bold)
                .tint(Color.black)
                .buttonStyle(.borderedProminent)
            }
        
            .padding()
            
        
    }
}

#Preview {
    OnboardingView()
}
