//
//  ContentView.swift
//  Landmarks
//
//  Created by Darshil Agrawal on 08/04/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection : Tab = .list
    enum Tab{
        case featured
        case list
    }
    
    
    var body: some View {
        TabView(selection: $selection){
            CategoryHome()
                .tabItem { Label("Featured",systemImage:"star") }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem { Label("List",systemImage:"list.bullet") }
                .tag(Tab.list)
        }
        
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
