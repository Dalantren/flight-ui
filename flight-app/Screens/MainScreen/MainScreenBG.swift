//
//  MainScreenBG.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 03/04/2025.
//

import SwiftUI

struct MainScreenBG<V: View>: View {
    var content: () -> V
     
    init(@ViewBuilder _ content: @escaping () -> V) { self.content = content
    }
     
     var body: some View {
         
         let screenSizes = UIScreen.main.bounds;
         ZStack(alignment: .top) {
             Color(.bgAccent)
                 .ignoresSafeArea(.all)
             
             Image(systemName: "staroflife.fill")
                 .resizable()
                 .scaledToFill()
                 .frame(width: 250, height: 200)
                 .offset(x: 110, y: -60)
                 .foregroundStyle(Color(.textAccent).opacity(0.1))
             
             VStack {
                 Spacer()
                 RoundedRectangle(cornerSize: CGSize(width: 30.0, height: 30.0))
                     .frame(width: screenSizes.width, height: screenSizes.height / 2)
                     .foregroundStyle(.bgPrimary)
             }
             .ignoresSafeArea(.all)
             
             VStack(alignment: .leading, spacing: 30) {
                 content()
             }
             .padding(.horizontal)
             .frame(width: screenSizes.width)
         }
     }
}

#Preview {
    MainScreenBG {
        Text("Hello World!")
    }
}
