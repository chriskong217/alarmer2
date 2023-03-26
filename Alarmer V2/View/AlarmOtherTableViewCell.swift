import SwiftUI

struct AlarmOtherTableViewCell: View {
    var callBackSwitchState: ((Bool) -> (Void))?
    @State var isOn: Bool = false
    
    var body: some View {
        HStack {
            Text("Alarm")
                .font(.system(size: 50))
                .foregroundColor(isOn ? .white : .lightGray)
            Spacer()
            Toggle("", isOn: $isOn)
                .onChange(of: isOn) { newValue in
                    callBackSwitchState?(newValue)
                }
                .toggleStyle(SwitchToggleStyle(tint: .green))
        }
        .padding()
        .background(Color.clear)
    }
}

struct AlarmOtherTableViewCell_Previews: PreviewProvider {
    static var previews: some View {
        AlarmHeaderView()

    }
}
