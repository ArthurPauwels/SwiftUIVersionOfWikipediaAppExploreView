//
//  ExploreCard.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 08/08/2020.
//

import SwiftUI

struct ExploreContentCel: View {
    
    @State var feedItem : FeedItem
    
    var body: some View {
        VStack(spacing: 16){
            HStack(alignment: .top){
                VStack(alignment: .leading, spacing: 6){
                    Text(feedItem.feedType)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text(feedItem.feedWikiSource)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image("overflow")
            }
            if (feedItem is Article) {
                ArticleCard(article: feedItem as! Article)
            }
            if (feedItem is PictureOfTheDay) {
                PictureOfTheDayCard(picureOfTheDay: feedItem as! PictureOfTheDay)
            }
            if (feedItem is ArticleList) {
                TopReadCard(topRead: feedItem as! ArticleList)
            }
        }
    }
}

struct ExploreCard_Previews: PreviewProvider {
    static var previews: some View {
        ExploreContentCel(feedItem: WikipediaRepository.getOneExampleArticle()).padding()
    }
}
