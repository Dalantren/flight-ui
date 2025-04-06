//
//  FlightShortInfo.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

struct FlightInfoDetail {
    let price: Int
    let note: String
}

struct FlightInfo {
    let departure: ShortLocationInfo
    let arrival: ShortLocationInfo
    let flightNumber: String
    let travelTime: String
    let details: FlightInfoDetail?
}
