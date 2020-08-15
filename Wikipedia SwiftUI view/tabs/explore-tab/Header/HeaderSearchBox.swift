//
//  HeaderSearchBox.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 08/08/2020.
//

import SwiftUI

struct HeaderSearchBox: View {
    
    @State var searchText : String = ""
    
    var body: some View {
        HStack {
            Image("search")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 16, height: 16, alignment: .center)
                .foregroundColor(.gray)
            TextField("Search Wikipedia", text: $searchText)
        }
        .padding(6)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}

struct HeaderSearchBox_Previews: PreviewProvider {
    static var previews: some View {
        HeaderSearchBox()
    }
}
