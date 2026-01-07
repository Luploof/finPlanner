import Foundation

protocol FetchPaymentDataSource {
    func fetchPayments(date: Date?, completion:(Result<[Payment], Error>) -> Void) throws
}

