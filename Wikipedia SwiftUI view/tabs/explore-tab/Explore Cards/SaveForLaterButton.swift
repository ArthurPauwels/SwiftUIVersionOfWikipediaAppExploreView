//
//  SaveForLaterButton.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 08/08/2020.
//

import SwiftUI

struct SaveForLaterButton: View {
    @State private var saved : Bool = false
    
    var body: some View {
        Button (action: {
            //handle short press
            saved.toggle()
        }) {
            HStack{
                Image(saved ? "save-filled" : "save").resizable().aspectRatio(contentMode: .fit).foregroundColor(.blue).frame(height: 12)
                Text(saved ? "Saved for later" : "Save for later").font(.caption).foregroundColor(.blue)
            }.onLongPressGesture {
                //handle long press
            }
        }
    }
}

struct SaveForLaterButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveForLaterButton()
    }
}
