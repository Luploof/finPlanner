import SwiftUI

struct FieldView: View {
    var placeholder: String
    @Binding var text:String
    var isTextField: Bool = true
    var isNumber: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text(placeholder)
                .roboto(font: .light, size: 18)
                .foregroundStyle(.white)
            if isTextField {
                TextField("Введите текст", text: $text)
                    .padding(.horizontal, 16)
                    .frame(height: 48)
                    .background(.white)
                    .clipShape(Capsule())
                    .keyboardType(isNumber ? .decimalPad : .default)
                    .foregroundStyle(.black)
                    .overlay(
                        Capsule()
                            .stroke(.appMint, lineWidth: 2)
                    )
                
                
            } else {
                TextEditor(text: $text)
                    .frame(height: 154)
                    .foregroundStyle(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay{
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.appMint, lineWidth: 1)
                    }
                        
                           
                    
            }
            
        }
    }
}


