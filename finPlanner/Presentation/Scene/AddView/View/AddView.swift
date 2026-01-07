import SwiftUI



struct AddView: View {

    @StateObject var viewModel: AddViewModel = Assembly.createAddViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 15){
            Text("Добавить платеж")
                .roboto(font: .black, size: 25)
                .foregroundStyle(.appYellow)
            if !viewModel.isAdded {
                addVoewContent
                Spacer()
                SolidButton(text: "Добавить", textColor: .appBlack, solidColor: .appYellow){
                    viewModel.createNewPayment()
                }
                
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
                    SolidButton(text: "Каждый месяц",  textColor: viewModel.payType == .monthly ? .appBlack : .appYellow, solidColor: .appYellow, isFull: viewModel.payType == .monthly){
                        viewModel.payType = .monthly
                    }
                    
                    SolidButton(text: "Разово",  textColor: viewModel.payType == .monthly ? .appYellow : .appBlack, solidColor: .appYellow, isFull: viewModel.payType == .oneTime){
                        viewModel.payType = .oneTime
                    }
                }
                
                switch viewModel.payType {
                case .monthly:
                    HStack(spacing: 4){
                        DatePicker("", selection: $viewModel.date, displayedComponents: [.date])
                            .frame(width: 25)
                            .clipped()
                            .overlay{
                                Text("\(viewModel.date.day)")
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
                        DatePicker("", selection: $viewModel.date, displayedComponents: [.date])
                            .frame(width: 125)
                            .clipped()
                            .overlay{
                                Text(viewModel.date.dayMonthYears)
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
                FieldView(placeholder: "Название платежа", text: $viewModel.paymentName)
                HStack(spacing: 15) {
                    FieldView(placeholder: "Общая сумма",  text: $viewModel.totalAmount, isNumber: true)
                    if viewModel.payType == .monthly {
                        FieldView(placeholder: "Ежемесячный платеж",  text: $viewModel.paymentAmount, isNumber: true)
                    }
                }
                FieldView(placeholder: "Описание", text: $viewModel.description, isTextField: false)
            }
            .padding(.horizontal, 3)
            
            HStack{
                Text("Уведомление о платеже")
                    .roboto(font: .light, size: 20)
                    .foregroundStyle(.appYellow)
                Spacer()
                RadioButtomView(isSelected: $viewModel.isNotificationEnabled)
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
