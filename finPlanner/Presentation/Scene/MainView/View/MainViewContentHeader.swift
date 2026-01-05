import SwiftUI

struct MainViewContentHeader: View {
    @Binding var payType: PayType
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Долги")
                    .foregroundStyle(.white)
                    .roboto(font: .black, size: 20)
                Spacer()
                HStack(spacing: 16){
                    Button{
                        payType = .monthly
                    } label: {
                        Text("Ежемесячно")
                            .foregroundStyle(payType == .monthly ? .white : .gray )
                            .roboto(font: payType == .monthly ? .black :.light, size: 14)
                    }
                    Button {
                        payType = .oneTime
                    }label: {
                        Text("Разово")
                            .foregroundStyle(payType == .oneTime ? .white :.gray)
                            .roboto(font: payType == .oneTime ? .black :.light, size: 14)
                    }
                
                }
            }
            HStack(spacing: 4){
                Text("BYN 2500")
                Text("/ Каждый месяц")
            }
            .foregroundStyle(.white)
            .roboto(font: .black, size: 16)
        }
    }
}
