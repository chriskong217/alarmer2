
import SwiftUI

struct AlarmLabelViewController: View {
    
    
    // MARK: - Properties
    @State private var alarmLabelText = ""
    weak var labelDelegate: UpdateAlarmLabelDelegate?
    
    // MARK: - View
    var body: some View {
        VStack {
            TextField("Alarm", text: $alarmLabelText)
                .padding()
                .background(RoundedRectangle(cornerRadius: 8).foregroundColor(.white))
                .padding(.horizontal)
                .onDisappear {
                    if alarmLabelText.isEmpty {
                        labelDelegate?.updateAlarmLabel(alarmLabelText: "Alarm")
                    } else {
                        labelDelegate?.updateAlarmLabel(alarmLabelText: alarmLabelText)
                    }
                }
        }
        .navigationBarTitle("Label")
        .navigationBarTintColor(.orange)
        .background(Color.secondarySystemGroupedBackground.ignoresSafeArea())
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                UIApplication.shared.windows.first?.rootViewController?.view.endEditing(true)
            }
        }
    }
    
    struct AlarmLabelViewController_Previews: PreviewProvider {
        static var previews: some View {
            AlarmLabelViewController()
        }
    }
}


//This file defines a view for setting and updating the label of an alarm in the app. The view contains a text field for user input and communicates with the main alarm view to update the label when necessary.
