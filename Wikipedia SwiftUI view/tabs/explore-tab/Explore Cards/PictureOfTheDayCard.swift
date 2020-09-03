//
//  PictureOfTheDayCard.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 09/08/2020.
//

import SwiftUI
import SDWebImageSwiftUI

struct PictureOfTheDayCard: View {
    
    var picureOfTheDay : PictureOfTheDay
    
    var body: some View {
        BaseCard {
            ZStack(alignment: .bottom){
                WebImage(url: URL(string: picureOfTheDay.image))
                    .resizable()
                    .scaledToFill()
                    .aspectRatio(1, contentMode: .fit)
                    .background(Color.black)
                Text(picureOfTheDay.description)
                    .font(.caption)
                    .lineLimit(3)
                    .foregroundColor(.white)
                    .padding(8)
            }
        }
    }
}

struct PictureOfTheDayCard_Previews: PreviewProvider {
    static var previews: some View {
        PictureOfTheDayCard(picureOfTheDay: WikipediaRepository.getOneExamplePictureOfTheDay()).padding()
    }
}
