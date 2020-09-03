//
//  Article.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 08/08/2020.
//

import Foundation

class Article : FeedItem {
    var title : String
    var subtitle : String
    var description : String
    var image: String?
    
    init(title: String, subtitle : String, description : String, image: String?, feedType: String, feedWikiSource: String) {
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.image = image
        super.init(feedType: feedType, feedWikiSource: feedWikiSource)
    }
}
