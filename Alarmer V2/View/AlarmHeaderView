import SwiftUI

struct AlarmHeaderView: View {
    let headerTitle: String
    let imageName: String
   
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
            Text(headerTitle)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
            Spacer()
        }
        .padding()
        .background(Color.black)
    }
}

struct AlarmHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmHeaderView(headerTitle: "Title", imageName: "bell")

    }
}
