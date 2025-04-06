//
//  HomeScreenTabView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 04/04/2025.
//

import SwiftUI

struct HomeScreenTabView: View {
    @State private var suggestedFlight = flightInfo
    
    var body: some View {
        NavigationStack {
            MainScreenBG {
                HeaderMainView()
                
                MainSearch()
                
                HStack {
                    Text("Today's Schedule")
                        .fontWeight(.bold)
                        .foregroundStyle(.textPrimary)
                        .font(.title2)
                    Spacer()
                    Button("View all") {
                        
                    }
                    .foregroundStyle(.textCaption)
                    .font(.subheadline)
                }
                
                FlightShortView(flightInfo: $suggestedFlight, selected: .constant(false))
                
            }
        }
    }
}

#Preview {
    HomeScreenTabView()
}
