//
//  HeaderMainView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

import SwiftUI

struct HeaderMainView: View {

    let secondaryTextColor = Color.gray

    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            HStack {
                VStack(alignment: .leading) {
                    Text("Thursday, 23 Feb 2023")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .padding(.bottom, 2)


                    HStack {
                        Image(systemName: "mappin.circle")
                            .foregroundColor(secondaryTextColor)
                        Text("Solo, Central Java")
                            .font(.subheadline)
                            .foregroundColor(secondaryTextColor)
                    }
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
                                .foregroundStyle(.red, .white)
                        }
                }
                    
            }
            
            VStack(alignment: .leading) {
                Text("Where do you want to go?")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .padding(.bottom, 2)

                Text("Explore new place, Get new experience")
                    .font(.subheadline)
                    .foregroundColor(secondaryTextColor)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    HeaderMainView()
}
