
import SwiftUI

struct ContentView: View {
    @State var isShowAddView: Bool = false
    @State var payType: PayType = .monthly
    @Binding var path: NavigationPath
    var body: some View {
        ZStack(alignment: .top) {
            
            HeaderView(page: HeaderViewContent(totalPrice: "1231323", title: "Сумма долга", date: "15 декабря", pageType: .main),  date: .constant(.now), action: {
                isShowAddView.toggle()
            })
            .zIndex(1)
            
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading, spacing: 19) {
                    MainViewContentHeader(payType: $payType)
                    
                    VStack(alignment: .leading, spacing: 19){
                        switch payType {
                        case .monthly:
                            PaymentCard(path: $path)
                        case .oneTime:
                            PaymentCard(path: $path)
                            PaymentCard(path: $path)
                        }
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


