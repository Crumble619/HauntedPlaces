//
//  Location.swift
//  HauntedPlaces
//
//  Created by Colin Greene on 12/29/21.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID().uuidString
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
}
