
import SwiftUI

struct ContentView: View {
    @State var isShowAddView: Bool = false
    var body: some View {
        ZStack(alignment: .top) {
            
            HeaderView(page: HeaderViewContent(totalPrice: "1231323", title: "Сумма долга", date: "15 декабря", pageType: .main), action: {
                isShowAddView.toggle()
            })
            .zIndex(1)
            
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading, spacing: 19) {
                    MainViewContentHeader()
                    
                    VStack(alignment: .leading, spacing: 19){
                        PaymentCard()
                        PaymentCard()
                        PaymentCard()
                        PaymentCard()
                    }
                }
                .padding(.top, 120)
                .padding(.bottom, 80)
            }
            
            
        }
        .padding(.horizontal, 20)
        .background(.appBlack)
        .sheet(isPresented: $isShowAddView){
            AddView()
        }
    }
}


