import SwiftUI

struct SolidButton: View {
    var body: some View {
        Button{
            //
        } label: {
            Text("Подробнее")
                .roboto(font: .light, size: 14)
                .foregroundStyle(.appBlack)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .overlay{
                    Capsule()
                        .stroke(.appBlack, lineWidth: 1)
                }
                .clipShape(.capsule)
            
        }
    }
}
