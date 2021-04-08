//
//  ContentView.swift
//  Landmarks
//
//  Created by Darshil Agrawal on 08/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            MapView()
                .frame(height:300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack(alignment: .leading) {
                    
                        Text("Turtle Rock")
                            .font(.title)
                    HStack {
                        Text("Joshua Tree national Park")
                            
                        Spacer()
                        Text("California")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Kya Mast Park Banaya hai rey")
                    
            }.padding()
            Spacer()
        }
            
        }
            
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
