//
//  AddAlarmButtonView.swift
//  Alarmer V2
//
//  Created by Chris Kong on 3/21/23.
//

import SwiftUI

struct AddAlarmButtonView: View {
    @State private var isSwitchOn: Bool = false
    var title: String

    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 17))
                .padding(.leading, 14)
                .padding(.vertical)

            Spacer()

            Toggle("", isOn: $isSwitchOn)
                .toggleStyle(SwitchToggleStyle(tint: .accentColor))
                .labelsHidden()
                .padding(.trailing, 10)
        }
    }
}

struct AddAlarmButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddAlarmButtonView(title: "Alarm")
            .previewLayout(.sizeThatFits)
    }
}
