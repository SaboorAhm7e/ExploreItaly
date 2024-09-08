//
//  PlaceModel.swift
//  ExploreItaly
//
//  Created by Saboor on 08/09/2024.
//

import Foundation

struct PlaceModel : Decodable {
    var place_id : Int
    var city_id : Int
    var place_name : String
    var place_cover : String
    var place_lat : String
    var place_long : String
    var place_images : [String]
    var place_description : String
}
