//
//  HeaderMainView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

import SwiftUI

struct HeaderMainView: View {
    private let dateFormatter = DateFormatter()
    
    init() {
        dateFormatter.dateFormat =  "EEEE, d MMM y"
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            HStack {
                VStack(alignment: .leading) {
                    Text(dateFormatter.string(from:Date.now))
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .padding(.bottom, 2)


                    HStack {
                        Image(systemName: "mappin.circle")
                        Text("Solo, Central Java")
                    }
                    .opacity(0.5)
                    .font(.subheadline)
                }
                
                Spacer()
                
                
                Button {
                    print("notification clicked")
                } label: {
                    Circle()
                        .stroke(.white, lineWidth: 2)
                        .frame(width: 40, height: 40)
                        .overlay {
                            Image(systemName: "bell.badge")
                                .foregroundStyle(.red, .textAccent)
                        }
                }
                    
            }
            
            VStack(alignment: .leading) {
                Text("Where do you want to go?")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .padding(.bottom, 2)

                Text("Explore new place, Get new experience")
                    .opacity(0.5)
                    .font(.subheadline)
            }
        }
        .foregroundStyle(.textAccent)
    }
}

#Preview {
    ZStack {
        Color(.bgAccent)
        HeaderMainView()
    }
}
