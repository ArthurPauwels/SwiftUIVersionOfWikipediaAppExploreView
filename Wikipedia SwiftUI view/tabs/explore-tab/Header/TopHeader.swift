//
//  TopHeader.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 08/08/2020.
//

import SwiftUI

struct TopHeader: View {
    var body: some View {
        HStack{
            Image("wikipedia")
            Spacer()
            Image("settings")
        }
    }
}

struct TopHeader_Previews: PreviewProvider {
    static var previews: some View {
        TopHeader()
    }
}
