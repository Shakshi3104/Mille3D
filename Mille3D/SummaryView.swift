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

// MARK: -
struct MeasureChartView: View {
    var title: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .foregroundStyle(.secondary)
            ChartLayoutView()
                .padding()
        }
        .padding()
        .frame(width: 300, height: 200)
        .background(.regularMaterial, in: .rect(cornerRadius: 20))
    }
}

// MARK: - SummaryView
struct SummaryView: View {
    @State private var isPresented = false
    
    var body: some View {
        NavigationStack(root: {
            VStack(spacing: 64) {
                HStack(spacing: 32) {
                    Button {
                        //
                        isPresented.toggle()
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
            .sheet(isPresented: $isPresented, content: {
                NavigationStack {
                    VStack(spacing: 32) {
                        MeasureChartView(title: "Sales Change")
                        MeasureChartView(title: "Sales per Category")
                    }
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button {
                                isPresented.toggle()
                            } label: {
                                Label("Cancel", systemImage: "xmark")
                            }

                        }
                    }
                }
            })
        })
    }
}

// MARK: -
#Preview {
    SummaryView()
}
