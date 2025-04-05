//
//  SchedulesListView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 04/04/2025.
//

import SwiftUI

struct SchedulesListView: View {
    @State var selectedIndex: Int?;
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<20) { index in
                    FlightShortView(flightInfo: flightInfo, selected: index == selectedIndex, showDetails: true, price: 5000, description: "Almost Empty"
                    )
                }
            }
        }
        .padding()
        .background(.bgPrimary)
        .toolbar {
            Text("Hello")
        }
    }
}

#Preview {
    SchedulesListView()
}
