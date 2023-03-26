//
//  WorldClockView.swift
//  Alarmer V2
//
//  Created by user234729 on 3/25/23.
//

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        Text("World Clock")
            .navigationTitle("World Clock")
            #if os(iOS)
            .navigationBarTitleDisplayMode(.large)
            #endif
        
    }
}

struct WorldClockView_Previews: PreviewProvider {
    static var previews: some View {
        WorldClockView()
    }
}
