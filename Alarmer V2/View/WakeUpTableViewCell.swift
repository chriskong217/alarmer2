import SwiftUI

struct WakeUpTableViewCell: View {
    @State private var isSettingButtonTapped: Bool = false
    
    var body: some View {
        HStack {
            Text("Title")
                .foregroundColor(.lightGray)
            
            Spacer()
            
            Button(action: {
                isSettingButtonTapped.toggle()
            }) {
                Text("Setting")
                    .foregroundColor(.orange)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Color(.systemGray6))
                    .cornerRadius(15)
            }
            .padding(.trailing, 10)
        }
        .frame(height: 44)
        .background(Color.clear)
    }
}

struct WakeUpTableViewCell_Previews: PreviewProvider {
    static var previews: some View {
        WakeUpTableViewCell()
    }
}
