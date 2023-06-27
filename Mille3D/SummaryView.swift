//
//  SummaryView.swift
//  Mille3D
//
//  Created by MacBook Pro M1 on 2023/06/27.
//

import SwiftUI

// MARK: - MeasureSummeryView
struct MeasureSummaryView: View {
    var measureName: String
    var measureValue: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(measureName)
                .font(.headline)
                .foregroundStyle(.secondary)
            Text("\(measureValue)")
                .font(.largeTitle)
        }
    }
}

// MARK: - SummaryView
struct SummaryView: View {
    var body: some View {
        NavigationStack(root: {
            VStack(spacing: 64) {
                HStack(spacing: 32) {
                    Button {
                        //
                    } label: {
                        MeasureSummaryView(measureName: "Sales", measureValue: 2326534)
                            .padding()
                    }
                    .buttonBorderShape(.roundedRectangle(radius: 20))
                    
                    Button(action: {}, label: {
                        MeasureSummaryView(measureName: "Profit", measureValue: 292297)
                            .padding()
                    })
                    .buttonBorderShape(.roundedRectangle(radius: 20))
                    
                    Button(action: {}, label: {
                        MeasureSummaryView(measureName: "Quantity", measureValue: 38654)
                            .padding()
                    })
                    .buttonBorderShape(.roundedRectangle(radius: 20))
                    
                    Button(action: {}, label: {
                        MeasureSummaryView(measureName: "Orders", measureValue: 10194)
                            .padding()
                    })
                    .buttonBorderShape(.roundedRectangle(radius: 20))
                }
            }
            .navigationTitle("Dashboard")
        })
    }
}

// MARK: -
#Preview {
    SummaryView()
}
