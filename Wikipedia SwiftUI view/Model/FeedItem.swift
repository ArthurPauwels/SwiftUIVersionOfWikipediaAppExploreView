//
//  FeedItem.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 09/08/2020.
//

import Foundation

class  FeedItem : Hashable{
    private static var idCount : Int = 0
    let itemID : Int
    let feedType : String
    let feedWikiSource : String
    
    init(feedType : String, feedWikiSource : String) {
        self.itemID = FeedItem.idCount
        FeedItem.idCount += 1
        self.feedType = feedType
        self.feedWikiSource = feedWikiSource
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(itemID)
    }
    
    static func == (lhs: FeedItem, rhs: FeedItem) -> Bool {
        lhs.itemID == rhs.itemID
    }
}
