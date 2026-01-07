import Foundation

class Assembly {
    static func createMainViewModel() -> MainViewModel {
        let dataSource = FetchPaymentsManager()
        let repo = FetchPaymentRepositoryImpl(dataSource: dataSource)
        let useCase = FetchPaymentsUseCaseImpl(repository: repo)
        return MainViewModel(fetchUseCase: useCase)
        
    }
    
    static func createAddViewModel() -> AddViewModel {
        let manager = CreatePaymentManager()
        let repo = CreatePaymentRepositoryImpl(dataSource: manager)
        let useCase = CreatePaymentUseCaseImp(repository: repo)
        return AddViewModel(createUseCase: useCase)
    }
}

