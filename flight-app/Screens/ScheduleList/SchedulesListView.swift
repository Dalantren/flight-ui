//
//  SchedulesListView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 04/04/2025.
//

import SwiftUI

struct SchedulesListView: View {
    @State private var selectedIndex: Int?;
    @State private var flight = flightInfoDetailed
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<10) { index in
                    FlightShortView(
                        flightInfo: $flight,
                        selected: .constant(index == selectedIndex)
                    ).onTapGesture {
                        selectedIndex = index == selectedIndex ? nil : index
                    }
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
