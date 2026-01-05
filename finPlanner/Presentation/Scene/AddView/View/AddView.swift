import SwiftUI



struct AddView: View {
    @State var nameText:String = ""
    @State var isSelected = true
    @State var payType: PayType = .monthly
    @State var date: Date = .now
    @State var isShowCalendar = false
    @State var isAdded: Bool = false
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 15){
            Text("Добавить платеж")
                .roboto(font: .black, size: 25)
                .foregroundStyle(.appYellow)
            if !isAdded {
                addVoewContent
                Spacer()
                SolidButton(text: "Добавить", textColor: .appBlack, solidColor: .appYellow)
                
            } else {
                Spacer()
                success
                Spacer()
                
            }

        }
        .padding(.horizontal, 10)
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
        .background(.appBlack)

 
        
    }
}

#Preview {
    AddView()
}

extension AddView {
    var addVoewContent : some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                HStack(spacing: 20){
                    SolidButton(text: "Каждый месяц",  textColor: payType == .monthly ? .appBlack : .appYellow, solidColor: .appYellow, isFull: payType == .monthly){
                        payType = .monthly
                    }
                    
                    SolidButton(text: "Разово",  textColor: payType == .monthly ? .appYellow : .appBlack, solidColor: .appYellow, isFull: payType == .oneTime){
                        payType = .oneTime
                    }
                }
                
                switch payType {
                case .monthly:
                    HStack(spacing: 4){
                        DatePicker("", selection: $date, displayedComponents: [.date])
                            .frame(width: 25)
                            .clipped()
                            .overlay{
                                Text("\(date.day)")
                                    .roboto(font: .black, size: 15)
                                    .underline()
                                    .foregroundStyle(.appMint)
                                    .frame(width: 27, height: 34)
                                    .background(.appBlack)
                                    .allowsHitTesting(false)
                            }
                        
                        Text("число")
                            .roboto(font: .light, size: 15)
                            .foregroundStyle(.appMint)
                        
                    }
                    .padding(.vertical, 20)
                case .oneTime:
                    HStack(spacing: 4){
                        Text("До")
                            .roboto(font: .light, size: 15)
                            .foregroundStyle(.appMint)
                        DatePicker("", selection: $date, displayedComponents: [.date])
                            .frame(width: 125)
                            .clipped()
                            .overlay{
                                Text(date.dayMonthYears)
                                    .roboto(font: .black, size: 15)
                                    .underline()
                                    .foregroundStyle(.appMint)
                                    .frame(width: 130, height: 34)
                                    .background(.appBlack)
                                    .allowsHitTesting(false)
                            }
                        
                    }
                    .padding(.vertical, 20)
                }
                
            }
            
            VStack(alignment: .leading, spacing: 12){
                FieldView(placeholder: "Название платежа", text: $nameText)
                HStack(spacing: 15) {
                    FieldView(placeholder: "Общая сумма",  text: $nameText)
                    if payType == .monthly{
                        FieldView(placeholder: "Ежемесячный платеж",  text: $nameText)
                    }
                }
                FieldView(placeholder: "Описание", text: $nameText, isTextField: false)
            }
            .padding(.horizontal, 3)
            
            HStack{
                Text("Уведомление о платеже")
                    .roboto(font: .light, size: 20)
                    .foregroundStyle(.appYellow)
                Spacer()
                RadioButtomView(isSelected: $isSelected)
            }
            .padding(.horizontal ,10)
            .padding(.vertical ,20)
        }
    }
}
extension AddView {
    var success: some View {
        VStack(alignment: .center, spacing: 50){
            Image(systemName: "checkmark.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 127, height: 127)
                .foregroundStyle(.appYellow)
            Text("Платеж добавлен")
                .roboto(font: .black, size: 25)
                .foregroundStyle(.appYellow)
        }
    }
}
