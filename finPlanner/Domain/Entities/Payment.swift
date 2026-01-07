import Foundation

struct Payment: Identifiable {
    let id: String
    let type: PayType
    var title: String
    var descriptionText: String
    var paymentAmount: Double
    var totalAmount: Double
    var dueDay: Int?
    var dueDate: Date?
    var isNotificationEnabled: Bool
    var lastPay: Date
    var createdAt: Date
}
