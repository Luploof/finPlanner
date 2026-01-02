import SwiftUI

extension View {
    func roboto(font: Roboto = .regular, size: CGFloat = 14) -> some View {
         self
            .font(.custom(font.rawValue, size: size))
    }
}
 
