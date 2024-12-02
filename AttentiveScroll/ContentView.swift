//
//  ContentView.swift
//  AttentiveScroll
//
//  Created by me on 02.12.2024.
//

import SwiftUI

struct AttentiveScroll: View {
    var rectangleHeight: CGFloat = 50
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack {
                    ForEach(1..<101) { i in
                        Text(String(i))
                            .font(.title)
                            .fontDesign(.monospaced)
                            .foregroundStyle(Color(uiColor: .systemGray3))
                            .frame(maxWidth: .infinity)
                    }
                }
            }
            .contentMargins(.bottom, rectangleHeight)
            
            Rectangle()
                .fill(.red)
                .opacity(0.6)
                .frame(height: rectangleHeight)
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            AttentiveScroll()
                .tabItem {
                    Label("First", systemImage: "star")
                }
        }
    }
}

#Preview {
    ContentView()
}
