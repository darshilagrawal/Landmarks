//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Darshil Agrawal on 09/04/21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData:ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks : [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favourites Only")
                }
                ForEach(filteredLandmarks){ landmark in
                NavigationLink(destination:LandmarkDetail(landmark:landmark)){
                LandmarkRow(landmark: landmark)
                }
            }
        }.navigationTitle("Landmark")
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
