//
//  AlarmInfo.swift
//  Alarmer V2
//
//  Created by user232951 on 3/25/23.
//

import Foundation

class AlarmInfo: Identifiable {
    let id: UUID
    var date: Date
    var noteLabel: String
    var isOn: Bool
    var selectDays: Set<Day> // Add selectDays property
    
    init(id: UUID = UUID(), date: Date, noteLabel: String, isOn: Bool, selectDays: Set<Day> = []) {
        self.id = id
        self.date = date
        self.noteLabel = noteLabel
        self.isOn = isOn
        self.selectDays = selectDays // Set selectDays in the initializer
    }
}
extension Date {
    func toString(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}

//This file Contains the AlarmInfo structure and a Date extension.

