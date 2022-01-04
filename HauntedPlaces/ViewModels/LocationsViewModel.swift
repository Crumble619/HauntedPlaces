//
//  LocationsViewModel.swift
//  HauntedPlaces
//
//  Created by Colin Greene on 12/29/21.
//

import Foundation
import MapKit
import SwiftUI
import CoreLocation
import CoreLocationUI

class LocationsViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published var locationManager = CLLocationManager()
    
    // All loaded locations
    @Published var locations: [Location]
    
    // Current location on map
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    // Show location detail via sheet
    @Published var sheetLocation: Location? = nil
    
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    
    override init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        let openingLocation = locations.randomElement()
        self.mapLocation = openingLocation!
        super.init()
        locationManager.delegate = self
        self.updateMapRegion(location: openingLocation!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latestLocation = locations.last else {
            return
        }
        DispatchQueue.main.async {
            self.mapRegion = MKCoordinateRegion(center: latestLocation.coordinate, span: self.mapSpan)
        }
        //mapRegion = MKCoordinateRegion(center: location, span: mapSpan)
    }
    
    func requestAllowOnceLocationPermission() {
        locationManager.requestLocation()
    }
}
