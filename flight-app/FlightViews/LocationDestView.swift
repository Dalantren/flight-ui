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
    let selected = false
    
    ZStack {
        Color(selected ? .bgAccent : .bgCard)
        LocationDestView(location: arrival, selected:  selected)
    }
//    ZStack {
//        Color(.bgAccent)
//        LocationDestView(location: arrival, selected: true)
//    }


}
