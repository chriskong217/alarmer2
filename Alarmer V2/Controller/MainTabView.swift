//
//  MainTabView.swift
//  Alarmer V2
//
//  Created by user234729 on 3/25/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView {
                WorldClockView()
            }
            .tabItem {
                Image(systemName: "network")
                Text("World Clock")
            }
            .tag(0)
            
            NavigationView {
                AlarmView()
            }
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
            .tag(1)
            
            NavigationView {
                StopWatchView()
            }
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
            .tag(2)
            
            NavigationView {
                TimerView()
            }
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
            .tag(3)
        }
        .accentColor(.orange)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
