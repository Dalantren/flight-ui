//
//  LocationDestView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

import SwiftUI

struct LocationDestView: View {
    @State var location: ShortLocationInfo
    @State var selected = false
    
    var body: some View {
        VStack(spacing: 10) {
            Text(location.fullName)
            Text(location.shortcode)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(selected ? .white : .appBlue)
            Text(location.departureTime)
        }
        .font(.caption)
    }
}

#Preview {
    LocationDestView(location: arrival)
}
