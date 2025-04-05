//
//  SchedulesListView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 04/04/2025.
//

import SwiftUI

struct SchedulesListView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<20) { _ in
                    FlightShortView(flightInfo: flightInfo, showDetails: true, price: 5000, description: "Almost Empty"
                    )
                }
            }
        }
        .padding()
        .background(.mainBg)
        .toolbar {
            Text("Hello")
        }
    }
}

#Preview {
    SchedulesListView()
}
