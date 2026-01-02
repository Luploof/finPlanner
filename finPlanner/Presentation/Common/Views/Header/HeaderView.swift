import SwiftUI

struct HeaderView: View{
    var page: HeaderViewContent
    var action: () -> Void
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack{
                Text("\(page.totalPrice) BYN")
                    .roboto(font: .black, size: 27)
                    .foregroundStyle(.white)
                    .offset(y: -2)
                Spacer()
                    
                if page.pageType == .main {
                    Button{
                        action()
                    } label: {
                        ZStack{
                            Circle()
                                .fill(.appYellow)
                                .frame(width: 25)
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit() // это пишется после resizable, тока так ;)
                                .frame(width: 11)
                                .foregroundStyle(.appBlack)
                        }
                    }
                }
            
            }
            VStack(alignment: .leading, spacing: 2) {
                HStack{
                    Text("\(page.title)")
                        .roboto(font: .black, size: 32)
                    Spacer()
                    
                    if page.pageType == .paymantList {
                        Button{
                            action()
                        }label: {
                            Image(systemName: "calendar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                        }
                    }
                }
                Text("\(page.date)")
                    .roboto(font: .light, size: 20)
            }
            .foregroundStyle(.appYellow)
        }
        .padding(.bottom, 20)
        .background(.appBlack)
    }
        
}
