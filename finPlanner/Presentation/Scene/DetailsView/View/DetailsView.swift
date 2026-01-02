import SwiftUI

struct DetailsView: View {
    @State var isNotificationSelected:Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            header
            
            VStack(alignment: .leading){
                VStack(alignment: .leading, spacing: 2){
                    Text("82382 BYN")
                        .foregroundStyle(.white)
                        .roboto(font: .black, size: 27)
                    
                    Text("Кредит на айфон")
                        .foregroundStyle(.appYellow)
                        .roboto(font: .regular, size: 16)
                }
                .padding(.vertical, 30)
                
                VStack(alignment: .leading, spacing: 26) {
                    VStack(alignment: .leading, spacing: 17) {
                        HStack(spacing: 16) {
                            InfoTagView(text: "30043 BYN")
                            InfoTagView(text: "123 BYN")
                        }
                        
                        
                        Text("hgdashjd gasdhjgbd sghxad dfdsfdsskdsadjkgasdja  gsahdg asdjhsad gsd ahksdg a dagshasjkgdca gkashdgaskjd")
                            .foregroundStyle(.appMint)
                            .roboto(font: .regular, size: 16)
                        
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Divider()
                            .background(.gray)
                        HStack{
                            Text("Ближайший платеж")
                                .foregroundStyle(.white)
                                .roboto(font: .light, size:14)
                            
                            Spacer()
                            
                            HStack(spacing: 5){
                                Text("оплачен")
                                    .roboto(font: .light, size:14)
                                Text("21.12")
                                    .roboto(font: .black, size:12)
                            }
                            .padding(.horizontal, 10)
                            .padding(5)
                            .background(.appYellow)
                            .foregroundStyle(.appBlack)
                            .clipShape(Capsule())
                        }
                        .padding(.horizontal, 10)
                        
                        Divider()
                            .background(.gray)
                        
                        HStack{
                            Text("Уведомление о платеже")
                                .foregroundStyle(.white)
                                .roboto(font: .light, size:14)
                            
                            Spacer()
                            
                            RadioButtomView(isSelected: $isNotificationSelected)
                        }
                        .padding(.horizontal, 10)
                        
                        
                    }
                }
                
            }
            
            Spacer()
            
            
            VStack(alignment: .leading, spacing: 15){
                FullButton(text: "Закрыть досрочно", textColor: .appBlack, fillColor: .appYellow)
                SolidButton(text: "Удалить последний платеж", textColor: .appYellow)
                
            }
            
        }
        .padding(.horizontal, 16)
        .background(.appBlack)
    }
}

#Preview {
    DetailsView()
}

extension DetailsView {
    var header: some View {
        HStack{
            Button{
                //
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
            }
            Spacer()
            
            Text("Детали платежа")
                .roboto(font: .black, size: 18)
            
            Spacer()
            
            Button{
                //
            } label: {
                Image(systemName: "trash")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 16)
            }
            
        }
        .foregroundStyle(.appYellow)
        
    }
}


