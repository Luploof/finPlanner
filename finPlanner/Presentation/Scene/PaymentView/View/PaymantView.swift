import SwiftUI

struct PaymаntView: View {
    @Binding var path: NavigationPath
    @State var date: Date = .now
    var body: some View {
        ZStack(alignment: .top){
            HeaderView(page: HeaderViewContent(totalPrice: "12313", title: "Платежи", date: date.withoutDayYears, pageType: .paymantList), date: $date)
            .zIndex(1)
            
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading, spacing: 19){
                    PaymentCard(path: $path)
                    PaymentCard(path: $path)
                    PaymentCard(path: $path)
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

