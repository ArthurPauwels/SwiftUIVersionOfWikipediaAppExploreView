//
//  ArticleCard.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 08/08/2020.
//

import SwiftUI
import SDWebImageSwiftUI

struct ArticleCard: View {
    
    var article : Article
    
    var body: some View {
        BaseCard{
            VStack(alignment: .leading){
                if article.image != nil {
                    GeometryReader{_ in
                        WebImage(url: URL(string: article.image!))
                            .resizable()
                            .scaledToFill()
                    }
                    .frame(height: 200)
                    .clipped()
                }
                VStack(alignment: .leading, spacing: 0) {
                    Text(article.title)
                        .font(Font.custom("georgia", size: 20))
                        .padding(.bottom, 4)
                    Text(article.subtitle)
                        .font(Font.system(size: 15))
                        .foregroundColor(.secondary)
                        .padding(.bottom, 12)
                    Text(article.description)
                        .font(Font.system(size: 15))
                        .lineLimit(4)
                        .padding(.bottom, 12)
                    SaveForLaterButton()
                }.padding()
            }
        }
    }
}

struct ArticleCard_Previews: PreviewProvider {
    static var previews: some View {
        ArticleCard(article: WikipediaRepository.getOneExampleArticle()).padding()
    }
}
