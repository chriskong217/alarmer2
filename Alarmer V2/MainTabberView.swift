import SwiftUI

struct MainTabberView: View {
    var body: some View {
        TabView {
            // Add your tab items here
            // Example:
            // Text("First View")
            //     .tabItem {
            //         Image(systemName: "1.square.fill")
            //         Text("First")
            //     }
        }
        .environment(\.colorScheme, .dark)
    }
}

struct MainTabberView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabberView()
    }
}
