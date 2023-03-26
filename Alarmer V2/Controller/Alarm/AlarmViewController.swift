//
//  AlarmViewController.swift
//  Alarmer V2
//
//  Created by user232951 on 3/23/23.
//

import SwiftUI

struct AlarmView: View {
    @StateObject private var alarmStore = AlarmStore()
    @State private var isPresentingAddAlarmView = false
    @State private var editingAlarmIndex: Int?

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Sleep | Wake Up")) {
                    Text("hello")
                        .frame(height: 100)
                }
                
                Section(header: Text("Other")) {
                    ForEach(alarmStore.alarms.indices, id: \.self) { index in
                        AlarmRow(alarm: $alarmStore.alarms[index], onUpdate: { isOn in
                            alarmStore.isSwitch(index, isOn)
                        })
                        .frame(height: 100)
                        .listRowBackground(Color(UIColor.systemBackground))
                    }
                    .onDelete(perform: alarmStore.remove)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Alarm")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
            .sheet(isPresented: $isPresentingAddAlarmView) {
                AddAlarmView(alarmStore: alarmStore, editingAlarmIndex: $editingAlarmIndex)
            }
        }
    }
    
    private var addButton: some View {
        Button(action: {
            editingAlarmIndex = nil
            isPresentingAddAlarmView = true
        }) {
            Image(systemName: "plus")
                .foregroundColor(.orange)
        }
    }
}

struct AlarmRow: View {
    @Binding var alarm: AlarmInfo
    var onUpdate: (Bool) -> Void

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(alarm.date.toString(format: "HH:mm"))
                    .foregroundColor(alarm.isOn ? .white : .blue)
                Text(alarm.noteLabel)
                    .foregroundColor(alarm.isOn ? .white : .blue)
            }
            Spacer()
            Toggle("", isOn: $alarm.isOn.animation())
                .labelsHidden()
                .onChange(of: alarm.isOn, perform: onUpdate)
        }
    }
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView()
    }
}


// THis file Contains the AlarmView and AlarmRow views.
