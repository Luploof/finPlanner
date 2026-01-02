import SwiftUI

struct MainViewContentHeader: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Долги")
                    .foregroundStyle(.white)
                    .roboto(font: .black, size: 20)
                Spacer()
                HStack(spacing: 16){
                    Button{
                        //
                    } label: {
                        Text("Ежемесячно")
                            .foregroundStyle(.white)
                            .roboto(font: .black, size: 14)
                    }
                    Button {
                        //
                    }label: {
                        Text("Разово")
                            .foregroundStyle(.white)
                            .roboto(font: .black, size: 14)
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
