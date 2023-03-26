//
//  RepeatAlarmViewController.Swift
//  Alarmer V2
//
//  Created by user232951 on 3/25/23.
//

import SwiftUI

struct RepeatAlarmView: View {
    @Binding var selectDays: Set<Day>

    var body: some View {
        NavigationView {
            List(Day.allCases, id: \.self) { day in
                HStack {
                    Text(day.longName)
                    Spacer()
                    if selectDays.contains(day) {
                        Image(systemName: "checkmark")
                            .foregroundColor(.orange)
                    }
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    if selectDays.contains(day) {
                        selectDays.remove(day)
                    } else {
                        selectDays.insert(day)
                    }
                }
            }
            .navigationTitle("Repeat")
            #if os(macOS)
            .listStyle(InsetListStyle())
            #else
            .listStyle(InsetGroupedListStyle())
            #endif
        }
    }
}
