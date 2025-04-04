//
//  HomeScreenTabView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 04/04/2025.
//

import SwiftUI

struct HomeScreenTabView: View {
    var body: some View {
        MainScreenBG {
            HeaderMainView()

            MainSearch()
            
            HStack {
                Text("Today's Schedule")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .font(.title2)
                Spacer()
                Button("View all") {
                    
                }
                .foregroundColor(.secondary)
                .font(.subheadline)
            }
            
            FlightShortView(flightInfo: flightInfo)

        }
    }
}

#Preview {
    HomeScreenTabView()
}
