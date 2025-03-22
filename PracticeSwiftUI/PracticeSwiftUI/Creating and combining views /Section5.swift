//
//  Section5.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/03/22.
//

import SwiftUI
import MapKit

// MARK: 他のフレームワークからSwiftUIビューを使用する
struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView()
}
