//
//  MapViewModel.swift
//  CodeChallege
//
//  Created by Alwin Amoros on 8/17/22.
//

import Foundation
import SwiftUI
import MapKit

final class MapViewModel: ObservableObject {
    private enum Locations: CaseIterable {
        case Disney
        case PGE
        case AppleHQ
        case Yosemite_National_Park
        
        var coordinate: MKCoordinateRegion {
            switch self {
                case .Disney:
                    return .init(center: .init(latitude: 33.812511, longitude: -117.918976), span: span)
                case .PGE:
                    return .init(center: .init(latitude: 37.7916, longitude: -122.3958), span: span)
                case .AppleHQ:
                    return .init(center: .init(latitude: 37.3318, longitude: -122.0312), span: span)
                case .Yosemite_National_Park:
                    return .init(center: .init(latitude: 37.865101, longitude: -119.538330), span: span)
            }
        }
        
        var name: String {
            switch self {
                case .Disney:
                    return "Disneyland Park"
                case .PGE:
                    return "Pacific Gas and Electric Company"
                case .AppleHQ:
                    return "Apple Head Quarters"
                case .Yosemite_National_Park:
                    return "Yosemite National Park"
            }
        }
        
        private var span: MKCoordinateSpan {
            MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
        }
    }
    var locations: [Location]
    
    @Published var chosenLocation: MKCoordinateRegion
    
    init() {
        let defaultCoordinates = MKCoordinateRegion(center: .init(latitude: 27.994402, longitude:  -81.760254), span: .init(latitudeDelta: 1, longitudeDelta: 1))
        chosenLocation = defaultCoordinates
        locations = Locations.allCases.map { Location(name: $0.name, coordinate: $0.coordinate)}
    }
    
    func handleTappedLocation(newLocation: Location) {
        chosenLocation = newLocation.coordinate
    }
    
}
