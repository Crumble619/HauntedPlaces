//
//  LocationsPreviewView.swift
//  HauntedPlaces
//
//  Created by Colin Greene on 12/29/21.
//

import SwiftUI

struct LocationsPreviewView: View {
    
    let location: Location
    
    var body: some View {
        
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16.0) {
                imageSection
                titleSection
            }
            VStack {
                learnMoreButton
                otherButton
            }.padding(.leading)
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .cornerRadius(10)
    }
}

struct LocationsPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            LocationsPreviewView(location: LocationsDataService.locations.first!)
                .padding()
        }
    }
}

extension LocationsPreviewView {
    
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View {
        VStack(alignment: .leading) {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
            Text(location.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var learnMoreButton: some View {
        Button {
            
        } label: {
            Text("Learn More")
                .font(.headline)
                .frame(width: 100, height: 36)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var otherButton: some View {
        Button {
            
        } label: {
            Text("Other")
                .font(.headline)
                .frame(width: 100, height: 36)
        }
        .buttonStyle(.borderedProminent)
    }
}
