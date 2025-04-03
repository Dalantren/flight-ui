//
//  LocationDestView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

import SwiftUI

struct LocationDestView: View {
    @State var location: ShortLocationInfo
    
    var body: some View {
        VStack(spacing: 10) {
            Text(location.fullName)
            Text(location.shortcode)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.appBlue)
            Text(location.departureTime)
        }
        .font(.caption)
        .foregroundColor(.secondary)
    }
}

#Preview {
    LocationDestView(location: arrival)
}
