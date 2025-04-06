//
//  LocationDestView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

import SwiftUI

struct LocationDestView: View {
    var location: ShortLocationInfo
    @Binding var selected: Bool
    
    var body: some View {
        VStack(spacing: 10) {
            Text(location.fullName)
                .foregroundStyle(selected ? .textAccent : .textCaption)
            Text(location.shortcode)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(selected ? .textAccent : .textCardAccent)
            Text(location.departureTime)
                .foregroundStyle(selected ? .textAccent : .textCaption)
        }
        .font(.caption)
    }
}

#Preview {
    ZStack {
        Color(.bgCard)
        LocationDestView(location: arrival, selected: .constant(false))
    }
    ZStack {
        Color(.bgAccent)
        LocationDestView(location: arrival, selected: .constant(true))
    }


}
