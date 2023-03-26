//
//  StopWatchViewController.swift
//  Alarmer V2
//
//  Created by user234695 on 3/25/23.
//

import SwiftUI

//this is what chatGPT translated the files into, i also looked into importing SnapKit since its just an open source library for iOS UI elements but i am unsure on how to put that into SwiftUI
struct StopWatchViewController: View {
    var body: some View {
        Text("Stop Watch")
            .onAppear()
        {
            //Perform tasks here
        }
    }
}


struct StopWatchViewController_Previews: PreviewProvider {
    static var previews: some View {
        StopWatchViewController()
    }
}
