//
//  AddAlarmTableView.swift
//  Alarmer V2
//
//  Created by user232951 on 3/22/23.
//

import SwiftUI

Add alarm table view:

import SwiftUI

struct AddAlarmTableViewCell: View {
   
    static let identifier = "AddAlarmTableViewCell"
   
    //MARK: - Views
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Title")
                    .foregroundColor(.white)
                Text("Content")
                    .foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding()
    }
}

struct AddAlarmTableViewCell_Previews: PreviewProvider {
    static var previews: some View {
        AddAlarmTableViewCell()
    }
}
