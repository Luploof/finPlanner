
import Foundation
import CoreData

@objc(PaymantEntity)
public class PaymantEntity: NSManagedObject {

}



extension PaymantEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PaymantEntity> {
        return NSFetchRequest<PaymantEntity>(entityName: "PaymentEntity")
    }

    @NSManaged public var createdAt: Date
    @NSManaged public var descriptionText: String
    @NSManaged public var dueDate: Date?
    @NSManaged public var dueDay: Int16
    @NSManaged public var id: String
    @NSManaged public var isNotificationEnabled: Bool
    @NSManaged public var paymentAmount: Double
    @NSManaged public var title: String
    @NSManaged public var totalAmount: Double
    @NSManaged public var type: Int16
    @NSManaged public var lastPay: Date?

}

extension PaymantEntity : Identifiable {

}
