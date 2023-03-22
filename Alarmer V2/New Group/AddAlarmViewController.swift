//
//  AddAlarmViewController.swift
//  Alarmer V2
//
//  Created by user232951 on 3/20/23.
//

import SwiftUI


protocol SaveAlarmInfoDelegate: AnyObject {
    func saveAlarmInfo(alarmData: AlarmInfo, index: Int)
}

struct AddAlarmView: View {
    
    @State private var alarm = AlarmInfo()
    @State private var tempIndexRow = 0
    @State private var selectDays: Set<Day> = []
    @State private var note = ""
    @State private var snooze = false
    
    weak var saveAlarmDataDelegate: SaveAlarmInfoDelegate?
    
    var body: some View {
        NavigationView {
            VStack {
                DatePicker(
                    "",
                    selection: $alarm.date,
                    displayedComponents: [.hourAndMinute]
                )
                .datePickerStyle(.wheel)
                
                List {
                    Button(action: {
                        let repeatVC = RepeatAlarmView(selectDays: selectDays)
                        repeatVC.repeatDelegate = self
                        self.navigationController?.pushViewController(repeatVC, animated: true)
                    }) {
                        HStack {
                            Text("Repeat")
                            Spacer()
                            Text(alarm.selectDays.map(\.shortName).joined(separator: ", "))
                        }
                    }
                    Button(action: {
                        let labelVC = AlarmLabelView(note: note)
                        labelVC.labelDelegate = self
                        self.navigationController?.pushViewController(labelVC, animated: true)
                    }) {
                        HStack {
                            Text("Label")
                            Spacer()
                            Text(note)
                        }
                    }
                    Toggle("Snooze", isOn: $snooze)
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Add Alarm")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(
                    leading: Button("Cancel") {
                        self.dismiss(animated: true)
                    },
                    trailing: Button("Save") {
                        UserNotification.shared.addNotificationRequest(alarm: alarm) // do we need to add this somewhere so it is in scope?
                        saveAlarmDataDelegate?.saveAlarmInfo(alarmData: alarm, index: tempIndexRow)
                        self.dismiss(animated: true)
                    }
                )
            }
        }
    }
}

struct RepeatAlarmView: View {
    
    @Binding var selectDays: Set<Day>
    
    var body: some View {
        List {
            ForEach(Day.allCases, id: \.self) { day in // no idea what this is
                HStack {
                    Text(day.longName) // no idea what this is
                    Spacer()
                    if selectDays.contains(day) {
                        Image(systemName: "checkmark")
                    }
                }
                .onTapGesture {
                    if selectDays.contains(day) {
                        selectDays.remove(day)
                    } else {
                        selectDays.insert(day)
                    }
                }
            }
        }
        .navigationTitle("Repeat")
                .modifier(NavigationBarTitleDisplayModeModifier(.inline))

    }
}

struct AlarmLabelView: View {
    
    @Binding var note: String
    
    var body: some View {
        Form {
            TextField("Label", text: $note)
        }
        .navigationTitle("Label")
                .modifier(NavigationBarTitleDisplayModeModifier(.inline))
    }
}

struct AlarmInfo {
    var date = Date()
    var selectDays = Set<Day>()
    var note = ""
    var snooze = false
}

enum Day: String, CaseIterable {
    case sunday, monday, tuesday, wednesday, thursday, friday, saturday

    var shortName: String {
        switch self {
        case .sunday: return "Sun"
        case .monday: return "Mon"
        case .tuesday: return "Tue"
        case .wednesday: return "Wed"
        case .thursday: return "Thu"
        case .friday: return "Fri"
        case .saturday: return "Sat"
        }
    }

    var longName: String {
        switch self {
        case .sunday: return "Sunday"
        case .monday: return "Monday"
        case .tuesday: return "Tuesday"
        case .wednesday: return "Wednesday"
        case .thursday: return "Thursday"
        case .friday: return "Friday"
        case .saturday: return "Saturday"
        }
    }
}

