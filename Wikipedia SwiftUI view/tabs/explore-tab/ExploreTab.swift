//
//  ExploreTab.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 07/08/2020.
//

import SwiftUI

struct ExploreTab: View {
    
    var feedItems = WikipediaRepository.getFeed()
    
    var body: some View {
        VStack(spacing: 0){
            TopHeader()
                .padding(.top, 32)
                .padding(.bottom)
                .padding(.horizontal)
                .background(Color.white)
            HeaderSearchBox()
                .padding(.horizontal, 10)
                .padding(.bottom, 8)
            Divider()
            ScrollView{
                LazyVStack(alignment: .leading) {
                    Text("Today")
                        .fontWeight(.bold)
                        .padding(.top, 32)
                        .padding(.horizontal)
                        .font(Font.system(size: 22))
                    ForEach(feedItems, id: \.self) { item in
                        ExploreContentCel(feedItem: item).padding()
                    }
                }
                
            }
        }
        .tabItem { Label("Explore", image : "tabbar-explore") }
    }
}

struct ExploreTab_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabView{
                ExploreTab()
            }
            .previewDevice("iPhone 11")
            TabView{
                ExploreTab()
            }
            .previewDevice("iPhone SE (2nd generation)")
        }
    }
}
