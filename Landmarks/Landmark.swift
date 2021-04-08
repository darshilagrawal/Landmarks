//
//  Landmark.swift
//  Landmarks
//
//  Created by Darshil Agrawal on 08/04/21.
//

import Foundation
import SwiftUI

struct Landmark :Codable,Hashable{
    var id:Int
    var name:String
    var park:String
    var state:String
    var description:String
    
    private var ImageName:String
    var image:Image{
        Image(ImageName)
    }
    
    private var coordinates: Coordinates
    
    struct Coordinates:Hashable,Codable{
        var latitude:Double
        var longitude:Double
        }
}
