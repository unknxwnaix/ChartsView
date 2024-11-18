//
//  RevenueStream.swift
//  ChartsView
//
//  Created by Maxim Dmitrochenko on 04-11-2024.
//

import Foundation
import SwiftUI

struct RevenueStream: Identifiable {
    let id = UUID()
    let name: String
    let value: Double
    let color: Color
}

struct MockData {
    static var revenueStreams: [RevenueStream] = [
        .init(name: "Adsense", value: 806, color: .teal),
        .init(name: "Courses", value: 17855, color: .pink),
        .init(name: "Sponsor", value: 4000, color: .indigo),
        .init(name: "Consulting", value: 2500, color: .purple),
        .init(name: "Marketing", value: 2900, color: .cyan),
        .init(name: "SCAM", value: 6793, color: .mint)
    ]
}
