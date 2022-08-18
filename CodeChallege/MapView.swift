//
//  MapView.swift
//  CodeChallege
//
//  Created by Alwin Amoros on 8/17/22.
//

import SwiftUI
import Foundation
import MapKit

struct MapView: View {
    @StateObject
    var viewModel = MapViewModel()
    var body: some View {
        VStack {
            List(viewModel.locations, id: \.id) { location in
                LocationCell(location: location)
                    .onTapGesture {
                        viewModel.handleTappedLocation(newLocation: location)
                    }
            }
            Map(coordinateRegion: $viewModel.chosenLocation,
                annotationItems: viewModel.locations) { location in
                MapMarker(coordinate: location.coordinate.center)
            }
        }
    }
}
