//
//  CustomTabBar.swift
//  ExploreItaly
//
//  Created by Saboor on 30/08/2024.
//

import SwiftUI


struct CustomTabBar: View {
    @Binding  var currentIndex: Int // Default selected index
    @Namespace private var animation
    @State private var buttonFrames: [CGRect] = Array(repeating: CGRect.zero, count: 3)
    
    var body: some View {
            ZStack {
                // Background of the Tab Bar
                HStack {
                    TabBarButton(currentIndex: $currentIndex, index: 0, systemImage: "heart", animation: animation, buttonFrames: $buttonFrames)
                    TabBarButton(currentIndex: $currentIndex, index: 1, systemImage: "house", animation: animation, buttonFrames: $buttonFrames)
                    TabBarButton(currentIndex: $currentIndex, index: 2, systemImage: "gear", animation: animation, buttonFrames: $buttonFrames)
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .frame(height: 55)
                .frame(maxWidth: 320)
                .background(Color.white)
                .shadow(radius: 3)
                .clipShape(Capsule())
                .shadow(radius: 10)
                
                // Moving Circle with Selected Button's Icon
                ZStack {
                    Circle()
                        .fill(Color.teal)
                    Image(systemName: currentButtonImage())
                        .font(.title)
                        .foregroundColor(.white)
                }
                .offset(x: buttonFrames[currentIndex].midX - UIScreen.main.bounds.width / 2)
                .shadow(radius: 10)
                .matchedGeometryEffect(id: "circle", in: animation)
                .frame(width: 70, height: 70)
            }
    }
    
    // Function to return the image name of the selected button
    func currentButtonImage() -> String {
        switch currentIndex {
        case 0: return "heart"
        case 1: return "house"
        case 2: return "gear"
        default: return "house"
        }
    }
}

struct TabBarButton: View {
    @Binding var currentIndex: Int
    let index: Int
    let systemImage: String
    var animation: Namespace.ID
    @Binding var buttonFrames: [CGRect]
    
    var body: some View {
        GeometryReader { geometry in
            Button(action: {
                withAnimation(.spring()) {
                    currentIndex = index
                }
            }) {
                VStack { // Ensure the image is centered vertically
                    Spacer()
                    Image(systemName: systemImage)
                        .font(.title)
                        .foregroundColor(currentIndex == index ? .white : .teal)
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .onAppear {
                buttonFrames[index] = geometry.frame(in: .global)
            }
            .onChange(of: currentIndex) { _ in
                buttonFrames[index] = geometry.frame(in: .global)
            }
        }
    }
}



//
//#Preview {
//    CustomTabBar()
//}

