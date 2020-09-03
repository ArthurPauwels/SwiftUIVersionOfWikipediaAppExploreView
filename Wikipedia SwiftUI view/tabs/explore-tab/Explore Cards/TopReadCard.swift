//
//  TopReadCard.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 09/08/2020.
//

import SwiftUI
import SDWebImageSwiftUI

struct TopReadCard: View {
    
    var topRead : ArticleList
    
    private func getColorBasedOnRank(_ rank : Int) -> Color{
        let rankBasedDelta : CGFloat = CGFloat(0.1 * (Double(rank) - 1.0))
        return Color(UIColor(red: 0.2, green: (0.4 + rankBasedDelta), blue: (0.8 - rankBasedDelta/4), alpha: 1))
    }
    
    fileprivate func topReadLine(_ article: Article, rank : Int) -> some View {
        return HStack {
            Text(rank.description)
                .font(.caption)
                .foregroundColor(getColorBasedOnRank(rank))
                .padding(6)
                .overlay(
                    Circle().stroke(getColorBasedOnRank(rank))
                )
            VStack(alignment: .leading){
                Text(article.title)
                    .font(.callout)
                    .lineLimit(1)
                Text(article.subtitle)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(1)
            }.padding(.vertical, 8)
            Spacer()
            if (article.image != nil) {
                WebImage(url: URL(string: article.image!))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipped()
                    .cornerRadius(5)
            }
        }
    }
    
    var body: some View {
        VStack {
            BaseCard{
                VStack{
                    ForEach(0..<5, id : \.self) { index in
                        topReadLine(topRead.articles[index], rank: index + 1)
                    }
                }.padding()
            }
            HStack{
                Spacer()
                Button(action: {}){
                    HStack {
                        Text("All top read articles")
                        Image(systemName: "chevron.right")
                    }.font(.caption)
                }
            }
        }
    }
}

struct TopReadCard_Previews: PreviewProvider {
    static var previews: some View {
        TopReadCard(topRead: WikipediaRepository.getOneExampleArtcleList()).padding()
    }
}
