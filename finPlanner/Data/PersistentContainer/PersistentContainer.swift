import Foundation
import CoreData

class PersistentContainer {
    static let shared = PersistentContainer()
    private init() {}
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Error \(error), \(error.userInfo)")
            }
            
        })
        
        return container
    }()
}
