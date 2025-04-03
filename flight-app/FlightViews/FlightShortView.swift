//
//  FlightShortView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

import SwiftUI

struct FlightShortView: View {
    @State var flightInfo: FlightShortInfo
    
    var body: some View {
        HStack {
            LocationDestView(location: flightInfo.departure)
            
            Spacer()
            
            VStack(spacing: 10) {
                Text(flightInfo.flightNumber)
                
                Circle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.mainBg)
                    .overlay {
                        Image(systemName: "point.bottomleft.forward.to.arrow.triangle.scurvepath.fill")
                            .rotationEffect(Angle(degrees: 90.0))
                    }

                Text(flightInfo.travelTime)
            }
            .font(.caption)
            .foregroundColor(.secondary)
            
            Spacer()
        
            LocationDestView(location: flightInfo.arrival)
        }
        .padding()
        .background(.white)
        .cornerRadius(20)
    }
}

#Preview {
    FlightShortView(flightInfo: flightInfo)
}
