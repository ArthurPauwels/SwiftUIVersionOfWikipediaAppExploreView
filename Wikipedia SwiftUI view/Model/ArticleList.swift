//
//  ArticleList.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 09/08/2020.
//

import Foundation

class ArticleList : FeedItem {
    var articles : [Article]
    init(articles: [Article], feedWikiSource: String) {
        self.articles = articles
        super.init(feedType: "Top read", feedWikiSource: feedWikiSource)
    }
}
