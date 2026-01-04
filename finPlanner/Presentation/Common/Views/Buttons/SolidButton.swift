import SwiftUI

struct SolidButton: View {
    var text: String
    var textColor: Color
    var solidColor: Color
    var isFull: Bool = true
    var action: (()->Void)?
    var body: some View {
        Button{
            action?()
        } label: {
            Text("\(text)")
                .roboto(font: .light, size: 14)
                .foregroundStyle(textColor)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .background(isFull ? solidColor : nil)
                .overlay{
                    Capsule()
                        .stroke(solidColor, lineWidth: 1)
                }
                .clipShape(.capsule)
            
        }
    }
}
