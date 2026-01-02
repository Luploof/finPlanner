import SwiftUI

struct PaymаntView: View {
    var body: some View {
        ZStack(alignment: .top){
            HeaderView(page: HeaderViewContent(totalPrice: "12313", title: "Платежи", date: "В декабре 2025", pageType: .paymantList))
                .zIndex(1)
            
            ScrollView{
                VStack(alignment: .leading, spacing: 19){
                    PaymentCard()
                    PaymentCard()
                    PaymentCard()
                }
            }
            .padding(.top, 120)
            .padding(.bottom, 80)
            .background(.appBlack)
        }
        .padding(.horizontal, 20)
        .background(.appBlack)
        
    }
}

