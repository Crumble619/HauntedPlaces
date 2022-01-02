//
//  LocationsView.swift
//  HauntedPlaces
//
//  Created by Colin Greene on 12/29/21.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    @State private var locationPresented: Bool = false
    
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
            VStack {
                Spacer()
                if locationPresented {
                        LocationsPreviewView(location: vm.mapLocation)
                            .shadow(color: Color.black.opacity(0.3), radius: 20)
                            .padding(5)
                }
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.locations,
            annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                        locationPresented = true
                    }
            }
        })
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
