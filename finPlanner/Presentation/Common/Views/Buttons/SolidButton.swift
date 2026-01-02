import SwiftUI

struct SolidButton: View {
    var text: String
    var textColor: Color
    var body: some View {
        Button{
            //
        } label: {
            Text("\(text)")
                .roboto(font: .light, size: 14)
                .foregroundStyle(textColor)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .overlay{
                    Capsule()
                        .stroke(textColor, lineWidth: 1)
                }
                .clipShape(.capsule)
            
        }
    }
}
