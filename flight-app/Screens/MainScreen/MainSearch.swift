//
//  MainSearch.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

import SwiftUI

enum TravelType: String, CaseIterable, Identifiable {
    case oneWay, round
    var id: Self { self }
}



struct MainSearch: View {
    private let spacing: CGFloat = 15.0;
    @State private var travelType: TravelType = .oneWay
    @State private var name: String = ""
    @State private var location: String = ""
    @State private var destination: String = ""
    @State private var departureDate: String = ""
    @State private var seatCount: String = "";

    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.bgCard)
                            
            VStack(spacing: spacing) {
                Picker("Travel Type", selection: $travelType) {
                    Text("One Way").tag(TravelType.oneWay)
                    Text("Round Trip").tag(TravelType.round)
                }
                .pickerStyle(.palette)
                
                CustomTextFieldView(
                    input: $location,
                    placeholder: "Current Location"
                )
                
                CustomTextFieldView(
                    input: $destination,
                    placeholder: "Destination"
                )
                
                HStack(spacing: spacing) {
                    CustomTextFieldView(
                        input: $departureDate,
                        placeholder: "Departure Date"
                    )
                    
                    CustomTextFieldView(
                        input: $seatCount,
                        placeholder: "Seat"
                    )
                }
                
                
                NavigationLink {
                    SchedulesListView()
                } label: {
                    Text("Search Commuter Line")
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(.bgAccent)
                        .foregroundStyle(.textAccent)
                        .fontWeight(.bold)
                        .cornerRadius(10)
                }
                
            }
            .padding()

        }
        .padding(.horizontal)
        .frame( height: 350)

    }
}

#Preview {
    MainSearch()
}
