//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Hotel Del",
            cityName: "Coronado, CA",
            coordinates: CLLocationCoordinate2D(latitude: 32.6803, longitude: -117.1772),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
                "HotelDelHistoric",
                "HotelDelModern",
            ],
            link: "https://en.wikipedia.org/wiki/Colosseum"),
        
        Location(
            name: "Whaley House",
            cityName: "San Diego, CA",
            coordinates: CLLocationCoordinate2D(latitude: 32.7528, longitude: -117.1946),
            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            imageNames: [
                "WhaleyHouseHistoric",
                "WhaleyHouseModern",
            ],
            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
    ]
}
