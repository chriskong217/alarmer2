//
//  StopWatchView.swift
//  Alarmer V2
//
//  Created by user234729 on 3/25/23.
//

import SwiftUI

struct StopWatchView: View {
    var body: some View {
        Text("Stopwatch")
            .navigationTitle("Stopwatch")
            #if os(iOS)
            .navigationBarTitleDisplayMode(.large)
            #endif
    }
}

struct StopWatchView_Previews: PreviewProvider {
    static var previews: some View {
        StopWatchView()
    }
}
