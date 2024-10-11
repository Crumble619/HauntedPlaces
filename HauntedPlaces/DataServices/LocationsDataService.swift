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
            description: "The Amityville Horror House was the site of a famous haunting in 1975, where a family experienced terrifying apparitions and supernatural events. The real horror of the Amityville story lies in the DeFeo murders, where Ronald DeFeo killed his family in 1974, leading to the infamous haunting tale.",
            imageNames: [
                "AmityHouseHistoric",
                "AmityHouseModern",
            ],
            link: "https://en.wikipedia.org/wiki/The_Amityville_Horror"),
        Location(
            name: "Hotel Del",
            cityName: "Coronado, CA",
            coordinates: CLLocationCoordinate2D(latitude: 32.6803, longitude: -117.1772),
            description: "Guests and employees have been experiencing supernatural occurrences almost since the day the hotel opened. Many people have attributed their encounters to Kate Morgan, one of the The Del’s former guests, who committed suicide on the beach in 1892. One guest reported her initials appeared to be drawn in a steamy bathroom mirror.",
            imageNames: [
                "HotelDelHistoric",
                "HotelDelModern",
            ],
            link: "https://en.wikipedia.org/wiki/Kate_Morgan"),
        
        Location(
            name: "Whaley House",
            cityName: "San Diego, CA",
            coordinates: CLLocationCoordinate2D(latitude: 32.7528, longitude: -117.1946),
            description: "The Whaley House has long been associated with paranormal activity, attracting visitors and ghost enthusiasts from around the world. The spirit of Yankee Jim Robinson, who met his demise on the property, is believed to roam the house, and several family members are said to linger in the afterlife as well.",
            imageNames: [
                "WhaleyHouseHistoric",
                "WhaleyHouseModern",
            ],
            link: "https://en.wikipedia.org/wiki/Whaley_House_(San_Diego,_California)"),
    ]
}
