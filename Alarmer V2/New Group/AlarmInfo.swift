//
//  AlarmInfo.swift
//  Alarmer V2
//
//  Created by user232951 on 3/25/23.
//

import Foundation

struct AlarmInfo: Identifiable {
    let id = UUID()
    var date: Date
    var noteLabel: String
    var isOn: Bool
}

extension Date {
    func toString(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}

//This file Contains the AlarmInfo structure and a Date extension.
