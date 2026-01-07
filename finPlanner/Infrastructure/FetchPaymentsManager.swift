import Foundation
import CoreData
class FetchPaymentsManager: FetchPaymentDataSource {
    let contex = PersistentContainer.shared.persistentContainer.viewContext
    
    func fetchPayments(date: Date?, completion: (Result<[Payment], any Error>) -> Void) throws {
        let req = PaymantEntity.fetchRequest()
        if let date {
            let predicate = NSPredicate(format: "lastPay >= $@ AND lastPay < %@", date.startOfMonth as NSDate, date.endOfMonth as NSDate)
            
            req.predicate = predicate
            
        }
        let payments = try contex.fetch(req)
        
        let domainPayments = payments.map { item in
            PaymentMapper.toDomain(from: item)
        }
        
        completion(.success(domainPayments))
    }
    
}

