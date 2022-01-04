//
//  LocationsView.swift
//  HauntedPlaces
//
//  Created by Colin Greene on 12/29/21.
//

import SwiftUI
import MapKit
import CoreLocation
import CoreLocationUI

struct LocationsView: View {
    
    @EnvironmentObject var vm: LocationsViewModel
    
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
            VStack {
                Spacer()
                LocationsPreviewView(location: vm.mapLocation)
                    .shadow(radius: 10)
                    .padding(5)
                    .overlay(alignment: .topTrailing) {
                        locationButton
                    }
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion,
            showsUserLocation: true,
            annotationItems: vm.locations,
            annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        })
            
    }
    
    private var locationButton: some View {
        LocationButton(.currentLocation) {
            vm.requestAllowOnceLocationPermission()
        }
        .labelStyle(.iconOnly)
        .cornerRadius(10)
        .symbolVariant(.fill)
        .foregroundColor(.white)
        .shadow(radius: 10)
        .offset(x: -68, y: 25)
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
