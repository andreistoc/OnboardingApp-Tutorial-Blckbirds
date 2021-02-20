//
//  ContentView.swift
//  OnboardingApp
//
//  Created by Andrei Istoc on 20.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: Tab = .meditating
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .orange
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.5)
    }
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                ForEach(subviewData) { entry in
                    Subview(subviewModel: entry).tag(entry.tag)
                        .tabItem {
                            Text("More")
                            Image(systemName: "star")
                        }
                }
            }.tabViewStyle(PageTabViewStyle())
        }.navigationTitle("Calmify")
        NavigatorView(selectedTab: $selectedTab)
    }
}


struct NavigatorView: View {
    
    @Binding var selectedTab: Tab
    
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                withAnimation {
                    switch selectedTab {
                    case .meditating:
                        selectedTab = .running
                    case .running:
                        selectedTab = .walking
                    case .walking:
                        return
                    }
                }
            }) {
                Image(systemName: "arrow.right")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 30, height: 30)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(30)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
