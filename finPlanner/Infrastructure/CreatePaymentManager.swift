
import Foundation
import CoreData

class CreatePaymentManager: CreatePaymentDataSource {
    let context = PersistentContainer.shared.persistentContainer.viewContext
    func createNewPayment (payment: Payment) throws {
        let _ = PaymentMapper.toEntity(from: payment, context: context)
        try context.save()
    }
    
    
    
}



