import Foundation

class FetchPaymentRepositoryImpl: FetchPaymentsRepository {
    private let dataSource: FetchPaymentDataSource
    init(dataSource: FetchPaymentDataSource) {
        self.dataSource = dataSource
    }
    func fetchPayments(from date: Date?, completion: (Result<[Payment], any Error>) -> Void) throws {
        try dataSource.fetchPayments(date: date, completion: completion)
    }
}

