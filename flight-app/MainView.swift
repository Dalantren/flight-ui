//
//  ContentView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 02/04/2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        let screenSizes = UIScreen.main.bounds;
        ZStack(alignment: .top) {
            Color(#colorLiteral(red: 0.1120006219, green: 0.314208746, blue: 0.8139246106, alpha: 1))
                .ignoresSafeArea(.all)
            
            Image(systemName: "staroflife.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 200)
                .offset(x: 110, y: -60)
                .foregroundColor(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.1031663907)))
            
            VStack {
                Spacer()
                RoundedRectangle(cornerSize: CGSize(width: 30.0, height: 30.0))
                    .frame(width: screenSizes.width, height: screenSizes.height / 2)
                    .foregroundColor(Color(UIColor.secondarySystemBackground))
            }
            .ignoresSafeArea(.all)

            VStack(alignment: .leading, spacing: 40) {
                HeaderMainView()
                MainSearch()

            }
            .frame(width: screenSizes.width)
            .foregroundColor(.white)
            
        }

    }
}

#Preview {
    MainView()
}
