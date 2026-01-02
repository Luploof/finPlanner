import SwiftUI

struct InfoTagView: View {
    var text: String
    var body: some View {
        Text("\(text)")
            .roboto(font: .black, size:16)
            .foregroundStyle(.appYellow)
            .padding(.horizontal, 17)
            .padding(.vertical, 9)
            .overlay {
                Capsule()
                    .stroke(.appYellow, lineWidth: 1)
            }
        
    }
}
