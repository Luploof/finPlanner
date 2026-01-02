import SwiftUI
struct PaymentCard: View {
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading, spacing: 2) {
                VStack(alignment: .leading, spacing: 10){
                    Text("Долг по кредитке")
                        .roboto(font: .black, size:24)
                    HStack(spacing:5){
                        Text("BYN 3245")
                            .roboto(font: .black, size:14)
                        Text("/ Остаток")
                            .roboto(font: .black, size:14)
                    }
                    Text("This something")
                        .roboto(font: .regular, size:14)
                }
                HStack{
                    HStack{
                        Text("123123")
                            .roboto(font: .black, size:16)
                        Text("/ Месяц")
                            .roboto(font: .regular, size:16)
                    }
                    Spacer()
                    HStack(spacing: 5){
                        Text("оплатить до")
                            .roboto(font: .light, size:14)
                        Text("21.12")
                            .roboto(font: .black, size:12)
                    }
                    .padding(.horizontal, 10)
                    .padding(5)
                    .background(.appBlack)
                    .foregroundStyle(.white)
                    .clipShape(Capsule())
                    
                    
                }
            }
            
            HStack(spacing: 4){
                FullButton(text: "Оплатить", textColor: .white, fillColor: .appBlack)
                SolidButton(text: "Подробнее", textColor: .appBlack)
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 20)
        .background(.appPink)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}
