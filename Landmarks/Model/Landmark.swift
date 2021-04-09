//
//  Landmark.swift
//  Landmarks
//
//  Created by Darshil Agrawal on 08/04/21.
//

import Foundation
import SwiftUI
import CoreLocation

public struct Landmark :Codable,Hashable,Identifiable{
    public var id:Int
    var name:String
    var park:String
    var state:String
    var description:String
    var isFavorite:Bool
    private var imageName:String
    var image:Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinates:CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    
    struct Coordinates:Hashable,Codable{
        var longitude:Double
        var latitude:Double
        
        }
}
