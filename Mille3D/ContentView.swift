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
    @State private var isPresented = false
    
    var body: some View {
        TabView {
            NavigationStack(root: {
                Text("Summary")
                    .navigationTitle("Dashboard")
                    .ornament(attachmentAnchor: .scene(alignment: .top)) {
                        HStack {
                            Button {
                                //
                                isPresented.toggle()
                            } label: {
                                Image(systemName: "tshirt")
                            }
                            
                            Button {
                                //
                            } label: {
                                Image(systemName: "shoe.2")
                            }
                        }
                    }
                    .sheet(isPresented: $isPresented, content: {
                        VStack {
                            Text("Clothes Sales")
                            ChartLayoutView()
                                .padding()
                        }
                        .padding()
                    })
            })
                .tabItem {
                    Label("Summary", systemImage: "rectangle.3.group")
                }
            
            Text("Sales")
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
