//
//  FlightShortView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

import SwiftUI

struct FlightShortView: View {
    @State var flightInfo: FlightShortInfo
    @State var selected = false
    @State var showDetails: Bool = false
    @State var price: Int?
    @State var description: String?
    
    
    var body: some View {
        VStack {
            HStack {
                LocationDestView(location: flightInfo.departure, selected: selected)
                    .foregroundColor(selected ? .white : .secondary)
                
                Spacer()
                
                VStack(spacing: 10) {
                    Text(flightInfo.flightNumber)
                    
                    HStack(alignment: .center, spacing: 0) {
                        Circle()
                            .frame(width: 10, height: 10)
                        
                        DashLineView(lineWidth: 1, dashPattern: [3])
                            .frame(width: 50)
                        
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.mainBg)
                            .overlay {
                                Image(systemName: "point.bottomleft.forward.to.arrow.triangle.scurvepath.fill")
                                    .rotationEffect(Angle(degrees: 90.0))
                            }
                        DashLineView(lineWidth: 1, dashPattern: [3])
                            .frame(width: 50)
                        Circle()
                            .frame(width: 10, height: 10)
                    }
                    .foregroundColor(selected ? .white : .secondary)
                    
                    Text(flightInfo.travelTime)
                }
                .font(.caption)
                
                Spacer()
                
                LocationDestView(location: flightInfo.arrival, selected: selected)
            }

            if (showDetails) {
                if let description = description, let price = price {
                    HStack (alignment: .center, spacing: 0) {
                        Circle()
                            .frame(width: 20, height: 20)
                        
                        DashLineView(dashPattern: [10])

                        Circle()
                            .frame(width: 20, height: 20)
                    }
                    .padding(.horizontal, -25)
                    .foregroundColor(.mainBg)
                    
                    HStack(spacing: 0) {
                        Text(description)
                        Spacer()
                        Text(price.description + " ₽")
                        Text("/Trip")
                            .font(.caption)
                    }
                }
            }
        }
        .padding(15)
        .background(selected ? .blue : .white)
        .cornerRadius(20)
        .foregroundColor(selected ? .white : .secondary)
    }
}

#Preview {
    FlightShortView(flightInfo: flightInfo)
    
    
    FlightShortView(flightInfo: flightInfo, showDetails: true, price: 5000, description: "Almost Empty", )
    
    FlightShortView(flightInfo: flightInfo, selected: true, showDetails: true, price: 5000, description: "Almost Empty")
}
