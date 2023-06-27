//
//  ContentView.swift
//  Mille3D
//
//  Created by MacBook Pro M1 on 2023/06/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {    
    var body: some View {
        TabView {
            SummaryView()
                .tabItem {
                    Label("Summary", systemImage: "rectangle.3.group")
                }
            
            SalesView()
                .tabItem {
                    Label("Sales", systemImage: "yensign.circle")
                }
            
            Text("Orders")
                .tabItem {
                    Label("Orders", systemImage: "shippingbox")
                }
        }
    }
}

#Preview {
    ContentView()
}
