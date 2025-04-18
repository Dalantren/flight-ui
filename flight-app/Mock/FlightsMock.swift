//
//  FlightsMock.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

let departure = ShortLocationInfo(
    fullName: "Solo Balapan",
    shortcode: "SOC",
    departureTime: "10:00 PM"
)

let arrival = ShortLocationInfo(
    fullName: "Yogyakarta, ST",
    shortcode: "YKT",
    departureTime: "12:00 PM"
)

let flightInfo = FlightInfo(
    departure: departure,
    arrival: arrival,
    flightNumber: "KRL-01072",
    travelTime: "5H 35m",
    details: nil
    
)

let flightInfoDetailed = FlightInfo(
    departure: departure,
    arrival: arrival,
    flightNumber: "KRL-01072",
    travelTime: "2H 45m",
    details: FlightInfoDetail(
        price: 5000,
        note: "Almost Empty"
    )
)
