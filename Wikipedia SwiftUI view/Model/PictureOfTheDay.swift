//
//  PictureOfTheDay.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 08/08/2020.
//

import Foundation

class PictureOfTheDay : FeedItem{
    var image : String
    var description : String
    
    init(description : String, image : String, feedWikiSource: String) {
        self.description = description
        self.image = image
        super.init(feedType: "Picture of the day", feedWikiSource: feedWikiSource)
    }
}
