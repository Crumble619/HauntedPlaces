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
            name: "Amityville Horror House",
            cityName: "Amityville, NY",
            coordinates: CLLocationCoordinate2D(latitude: 40.666, longitude: -73.415),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
                "AmityHouseHistoric",
                "AmityHouseModern",
            ],
            link: "https://en.wikipedia.org/wiki/The_Amityville_Horror"),
        Location(
            name: "Hotel Del",
            cityName: "Coronado, CA",
            coordinates: CLLocationCoordinate2D(latitude: 32.6803, longitude: -117.1772),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageNames: [
                "HotelDelHistoric",
                "HotelDelModern",
            ],
            link: "https://en.wikipedia.org/wiki/Kate_Morgan"),
        
        Location(
            name: "Whaley House",
            cityName: "San Diego, CA",
            coordinates: CLLocationCoordinate2D(latitude: 32.7528, longitude: -117.1946),
            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            imageNames: [
                "WhaleyHouseHistoric",
                "WhaleyHouseModern",
            ],
            link: "https://en.wikipedia.org/wiki/Whaley_House_(San_Diego,_California)"),
    ]
}
