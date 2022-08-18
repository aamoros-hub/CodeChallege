//
//  Location.swift
//  CodeChallege
//
//  Created by Alwin Amoros on 8/17/22.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: MKCoordinateRegion
}
