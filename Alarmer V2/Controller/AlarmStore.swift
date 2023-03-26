//
//  AlarmStore.swift
//  Alarmer V2
//
//  Created by user232951 on 3/25/23.
//

import Combine

class AlarmStore: ObservableObject {
    @Published var alarms: [AlarmInfo] = []
    var isEdit: Bool = false

    func isSwitch(_ index: Int, _ isOn: Bool) {
        alarms[index].isOn = isOn
    }

    func remove(at offsets: IndexSet) {
        alarms.remove(atOffsets: offsets)
    }

    func append(_ alarm: AlarmInfo) {
        alarms.append(alarm)
    }

    func edit(_ alarm: AlarmInfo, _ index: Int) {
        alarms[index] = alarm
    }
}

//this file Contains the AlarmStore class.
