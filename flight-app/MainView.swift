//
//  ContentView.swift
//  flight-app
//
//  Created by Artem Ivanitskii on 02/04/2025.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: String = "home"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeScreenTabView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag("home")
            
            Text("Calendar")
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
                .tag("calendar")
            
            Text("Tickets")
                .tabItem {
                    Image(systemName: "ticket")
                    Text("Tickets")
                }
                .tag("tickets")
            
            Text("Account")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
                .tag("account")
        }
    }
}

#Preview {
    MainView()
}
