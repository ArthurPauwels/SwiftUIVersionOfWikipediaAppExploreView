//
//  ContentView.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 07/08/2020.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView() {
            ExploreTab()
            Text("").tabItem { Label("Places", image : "tabbar-nearby") }
            Text("").tabItem { Label("Saved", image : "tabbar-save") }
            Text("").tabItem { Label("History", image : "tabbar-recent") }
            Text("").tabItem { Label("Search", image : "search") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
