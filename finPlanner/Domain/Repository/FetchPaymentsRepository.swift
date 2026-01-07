import Foundation

protocol FetchPaymentsRepository: AnyObject{
    func fetchPayments( from date: Date?, completion:(Result<[Payment], Error>) -> Void) throws
}
