//
//  LocationCell.swift
//  CodeChallege
//
//  Created by Alwin Amoros on 8/17/22.
//

import Foundation
import SwiftUI

struct LocationCell: View {
    let location: Location
    
    var body: some View {
        VStack(alignment: .center) {
            Text(location.name)
            HStack {
                VStack(alignment: .center) {
                    Text("longitude:")
                    Text(location.coordinate.center.longitude.description)
                }
                .padding(4)
                .background(
                    Rectangle().stroke()
                )
                Spacer()
                VStack(alignment: .center) {
                    Text("latitude:")
                    Text(location.coordinate.center.latitude.description)
                }
                .padding(4)
                .background(
                    Rectangle().stroke()
                )
            }
        }
    }
}
