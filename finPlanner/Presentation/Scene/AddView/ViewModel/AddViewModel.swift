import SwiftUI
import Combine

class AddViewModel: ObservableObject {
    private let createUseCase: CreatePaymentUseCase
    init(createUseCase: CreatePaymentUseCase) {
        self.createUseCase = createUseCase
    }
    
    @Published var isNotificationEnabled = false
    @Published var isSelected = true
    @Published var payType: PayType = .monthly
    @Published var date: Date = .now
    @Published var isShowCalendar = false
    @Published var isAdded: Bool = false
    
    @Published var paymentName:String = ""
    @Published var description:String = ""
    @Published var paymentAmount:String = ""
    @Published var totalAmount:String = ""
    func createNewPayment() {
        //validations
        do {
            try createUseCase.execute(payment: Payment(id: UUID().uuidString,
                                                       type: payType,
                                                       title: paymentName,
                                                       descriptionText: description,
                                                       paymentAmount: Double(paymentAmount) ?? 0,
                                                       totalAmount: Double(totalAmount) ?? 0,
                                                       isNotificationEnabled: isNotificationEnabled,
                                                       lastPay: .now,
                                                       createdAt: .now))
            isAdded.toggle()
        } catch {
            print(error.localizedDescription)
        }
    }
}

