
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            
            HeaderView()
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
                }.padding(.top, 120)
            }
            
            
        }
        .padding(.horizontal, 20)
        .background(.appBlack)
        
    }
}


