//
//  AlarmView.swift
//  Alarmer V2
//
//  Created by user234729 on 3/25/23.
//
import SwiftUI
import AudioToolbox

struct AlarmView: View {
    func playSystemSound() {
        AudioServicesPlaySystemSound(1005) // Replace 1005 with the desired system sound ID
    }
    
    var body: some View {
        VStack {
            Button(action: {
                playSystemSound()
            }) {
                Text("Play Sound")
            }
        }
        .navigationTitle("Alarm")
        
        #if os(iOS)
        .navigationBarTitleDisplayMode(.large)
        #endif
    }
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView()
    }
}
