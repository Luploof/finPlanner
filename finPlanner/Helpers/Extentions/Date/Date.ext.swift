import Foundation

extension Date {
    static let dayMonthFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "d MMMM YYYY"
        return formatter
    }()
    
    static let withoutDayMonthFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "MMMM YYYY"
        return formatter
    }()
    
    var dayMonthYears: String {
        Self.dayMonthFormatter.string(from: self)
    }
    
    var day: Int {
        Calendar.current.component(.day, from: self)
    }
    
    var withoutDayYears: String {
        Self.withoutDayMonthFormatter.string(from: self)
    }
}

extension Date {
    var startOfMonth: Date {
        let calendar = Calendar.current
        return calendar.date(from: calendar.dateComponents([.year, .month], from: self))!
    }
    
    var endOfMonth: Date {
        let calendar = Calendar.current
        return calendar.date(byAdding: .month, value:1, to: startOfMonth)!
    }
}
