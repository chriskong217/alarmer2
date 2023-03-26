//
//  DateExtension.Swift
//  Alarmer V2
//
//  Created by user232951 on 3/25/23.
//

import SwiftUI

extension Date {
    func localizedDescription(format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
