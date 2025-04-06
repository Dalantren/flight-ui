//
//  FlightShortView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

import SwiftUI

struct FlightShortView: View {
    @Binding var flightInfo: FlightInfo
    @Binding var selected: Bool
    
    var body: some View {
        VStack {
            HStack {
                LocationDestView(location: flightInfo.departure, selected: $selected)
                
                Spacer()
                
                VStack(spacing: 10) {
                    Text(flightInfo.flightNumber)
                        .foregroundStyle(selected ? .textAccent : .textCaption)
                    
                    HStack(alignment: .center, spacing: 0) {
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundStyle(selected ? .textAccent : .textCaption)
                        
                        DashLineView(lineWidth: 1, dashPattern: [3])
                            .frame(width: 50)
                            .foregroundStyle(selected ? .textAccent : .textCaption)
                        
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.bgPrimary)
                            .overlay {
                                Image(systemName: "point.bottomleft.forward.to.arrow.triangle.scurvepath.fill")
                                    .foregroundStyle(.textPrimary)
                                    .rotationEffect(Angle(degrees: 90.0))
                            }
                        DashLineView(lineWidth: 1, dashPattern: [3])
                            .frame(width: 50)
                            .foregroundStyle(selected ? .textAccent : .textCaption)
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundStyle(selected ? .textAccent : .textCaption)
                    }
                    
                    Text(flightInfo.travelTime)                            .foregroundStyle(selected ? .textAccent :  .textCaption)
                }
                .font(.caption)
                
                Spacer()
                
                LocationDestView(location: flightInfo.arrival, selected: $selected)
            }

            if let details = flightInfo.details {
                HStack (alignment: .center, spacing: 0) {
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    DashLineView(dashPattern: [10])

                    Circle()
                        .frame(width: 20, height: 20)
                }
                .padding(.horizontal, -25)
                .foregroundStyle(.bgPrimary)
                
                HStack(spacing: 0) {
                    Text(details.note)
                    Spacer()
                    Text(details.price.description + " ₽")
                        .foregroundStyle(selected ? .textAccent : .textCardAccent)
                    Text("/Trip")
                        .font(.caption)
                }
                .foregroundStyle(.textCaption)
            }
        }
        .padding(15)
        .background(selected ? .bgAccent : .bgCard)
        .cornerRadius(20)
    }
}

#Preview {
    FlightShortView(flightInfo: .constant(flightInfo), selected: .constant(false))
    
    FlightShortView(flightInfo: .constant(flightInfoDetailed), selected: .constant(false))

    FlightShortView(flightInfo: .constant(flightInfoDetailed), selected: .constant(true))
}
