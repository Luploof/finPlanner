import SwiftUI

struct FullButton: View {
    var body: some View {
        Button{
            //
        } label: {
            Text("Оплатить")
                .roboto(font: .light, size: 14)
                .foregroundStyle(.white)
                .padding(.top, 12)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                .background(.appBlack)
                .clipShape(.capsule)
            
        }
    }
}
