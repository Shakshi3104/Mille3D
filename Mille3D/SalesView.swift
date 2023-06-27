//
//  SalesView.swift
//  Mille3D
//
//  Created by MacBook Pro M1 on 2023/06/27.
//

import SwiftUI

struct SalesView: View {
    @State private var isPresented = false
    @State private var selectedCategory = "Clothes"
    
    var body: some View {
        NavigationStack {
            Text("Sales")
                .ornament(attachmentAnchor: .scene(alignment: .top)) {
                    HStack {
                        Button {
                            //
                            isPresented.toggle()
                            selectedCategory = "Clothes"
                        } label: {
                            Image(systemName: "tshirt")
                        }
                        
                        Button {
                            //
                            isPresented.toggle()
                            selectedCategory = "Shoes"
                        } label: {
                            Image(systemName: "shoe.2")
                        }
                    }
                }
                .sheet(isPresented: $isPresented, content: {
                    VStack {
                        Text("\(selectedCategory) Sales")
                            .font(.headline)
                            .foregroundStyle(.secondary)
                        ChartLayoutView()
                            .padding()
                    }
                    .padding()
                })
        }
    }
}

#Preview {
    SalesView()
}
