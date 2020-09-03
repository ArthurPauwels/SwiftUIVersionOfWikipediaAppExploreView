//
//  BaseCard.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 09/08/2020.
//

import SwiftUI

struct BaseCard<Content>: View where Content : View{
    
    public var content : Content
    
    @inlinable public init(@ViewBuilder content : () -> Content){self.content = content()}
    
    var body: some View {
        content.background(Color.white).cornerRadius(10).shadow(color: Color.gray.opacity(0.5), radius: 5)
    }
}

struct BaseCard_Previews: PreviewProvider {
    static var previews: some View {
        BaseCard(){Text("Hello World").padding()}
    }
}
