import SwiftUI

struct FullButton: View {
    var text: String
    var textColor: Color
    var fillColor: Color
    var body: some View {
        Button{
            //
        } label: {
            Text("Оплатить")
                .roboto(font: .light, size: 14)
                .foregroundStyle(textColor)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .background(fillColor)
                .clipShape(.capsule)
            
        }
    }
}
