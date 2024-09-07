//
//  CityModel.swift
//  ExploreItaly
//
//  Created by Saboor on 07/09/2024.
//

import Foundation

struct CityModel : Decodable {
    var city_name : String
    var city_id : Int
    var city_population : String
    var city_area : String
    var city_lat : String
    var city_long : String
    var city_cover : String
    var city_images : [String]
    var city_description : String
}
