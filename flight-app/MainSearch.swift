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
                .fill(Color(#colorLiteral(red: 0.9999999404, green: 1, blue: 1, alpha: 1)))

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
                
                Button {
                    
                } label: {
                    Text("Search Commuter Line")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .tint(Color(#colorLiteral(red: 0.1120006219, green: 0.314208746, blue: 0.8139246106, alpha: 1)))
                .controlSize(.large)
                .fontWeight(.bold)

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
