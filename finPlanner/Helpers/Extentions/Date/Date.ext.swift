import Foundation

extension Date {
    static let dayMonthFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "d MMMM YYYY"
        return formatter
    }()
    
    var dayMonthYears: String {
        Self.dayMonthFormatter.string(from: self)
    }
    
    var day: Int {
        Calendar.current.component(.day, from: self)
    }
}
