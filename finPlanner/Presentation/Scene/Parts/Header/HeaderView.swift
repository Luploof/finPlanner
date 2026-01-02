import SwiftUI

struct HeaderView: View{
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack{
                Text("12300 BYN")
                    .roboto(font: .black, size: 27)
                    .foregroundStyle(.white)
                    .offset(y: -2)
                Spacer()
                    
                Button{
                    //
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
            VStack(alignment: .leading, spacing: 2) {
                Text("Сумма долга")
                    .roboto(font: .black, size: 32)
                Text("15 декабря")
                    .roboto(font: .light, size: 20)
            }
            .foregroundStyle(.appYellow)
        }
        .padding(.bottom, 20)
        .background(.appBlack)
    }
        
}
