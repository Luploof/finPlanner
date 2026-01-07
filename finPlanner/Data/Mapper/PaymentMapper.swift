import Foundation
import CoreData

struct PaymentMapper {
    static func toDomain(from entitie: PaymantEntity) -> Payment {
        var payment = Payment(id: entitie.id,
                              type: PayType(rawValue: Int(entitie.type)) ?? .monthly,
                              title: entitie.title,
                              descriptionText: entitie.descriptionText,
                              paymentAmount: entitie.paymentAmount,
                              totalAmount: entitie.totalAmount,
                              isNotificationEnabled: entitie.isNotificationEnabled,
                              lastPay: entitie.lastPay ?? .now,
                              createdAt: entitie.createdAt)
        
        return payment
        
    }
    
    static func toEntity(from payment: Payment, context: NSManagedObjectContext) -> PaymantEntity {
        let entitie = PaymantEntity(context: context)
        entitie.id = payment.id
        entitie.type = Int16(payment.type.rawValue)
        entitie.title = payment.title
        entitie.descriptionText = payment.descriptionText
        entitie.paymentAmount = payment.paymentAmount
        entitie.totalAmount = payment.totalAmount
        entitie.dueDay = Int16(payment.dueDay ?? 0)
        entitie.dueDate = payment.dueDate
        entitie.isNotificationEnabled = payment.isNotificationEnabled
        entitie.createdAt = payment.createdAt
        entitie.lastPay = payment.lastPay

        return entitie
        
    }
}


