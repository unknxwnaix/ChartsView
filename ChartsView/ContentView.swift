//
//  ContentView.swift
//  ChartsView
//
//  Created by Maxim Dmitrochenko on 04-11-2024.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Chart {
                    ForEach(MockData.revenueStreams.sorted { $0.value > $1.value }) { stream in
                        
                        SectorMark(
                            angle: .value("Value", stream.value),
                            innerRadius: .ratio(0.6),
//                            outerRadius: 100,
                            angularInset: 1.0
                        )
//                        .foregroundStyle(by: .value("Name", stream.name))
                        .foregroundStyle(stream.color)
                        .cornerRadius(10)
                        .annotation(position: .overlay) {
                            Text("$\(Int(stream.value))")
                                .bold()
                                .foregroundColor(.white)
                        }
                        
//                        SectorMark(angle: .value("Stream", stream.value), angularInset: 2)
//                           .foregroundStyle(.red)
//                            .foregroundStyle(by: .value("Name", stream.name))
                    }
                }
                .chartLegend(.visible)
                .frame(width: 300, height: 300)
            }
            .padding()
            .navigationTitle("Revenue")
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
