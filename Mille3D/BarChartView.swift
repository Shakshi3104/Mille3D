//
//  BarChartView.swift
//  Mille3D
//
//  Created by MacBook Pro M1 on 2023/06/26.
//

import SwiftUI
import Charts

// MARK: - Bar chart
struct DummyData: Identifiable {
    var value: Int
    var date: Date
    var id = UUID()
}

struct BarChart: View {
    var data: [DummyData]
    let foregroundColor: Color
    
    var body: some View {
        VStack {
            Chart {
                barMarks()
                    .foregroundStyle(foregroundColor)
            }
            .chartLegend(.hidden)
            .chartXAxis(.hidden)
            .chartYAxis(.hidden)
        }
    }
    
    func barMarks() -> some ChartContent {
        return ForEach(data, id: \.id) { datum in
            BarMark(x: .value("date", datum.date),
                    y: .value("value", datum.value))
        }
    }
}

// MARK: -
struct ChartLayoutView: View {
    let data: [DummyData]
    
    init() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        
        self.data = [
            DummyData(value: 10, date: dateFormatter.date(from: "2023/02/01")!),
            DummyData(value: 12, date: dateFormatter.date(from: "2023/02/02")!),
            DummyData(value: 9, date: dateFormatter.date(from: "2023/02/03")!),
            DummyData(value: 11, date: dateFormatter.date(from: "2023/02/04")!),
            DummyData(value: 13, date: dateFormatter.date(from: "2023/02/05")!),
            DummyData(value: 8, date: dateFormatter.date(from: "2023/02/06")!),
            DummyData(value: 6, date: dateFormatter.date(from: "2023/02/07")!),
            DummyData(value: 14, date: dateFormatter.date(from: "2023/02/08")!)
        ]
    }
    
    var body: some View {
        VStack {
            BarChart(data: data, foregroundColor: .blue)
        }
    }
}
