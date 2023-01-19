//
//  LocationModel.swift
//  Africa
//
//  Created by Ahmet Ali ÇETİN on 20.01.2023.
//

import Foundation
import MapKit

struct LocationModel: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    //Computed property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
