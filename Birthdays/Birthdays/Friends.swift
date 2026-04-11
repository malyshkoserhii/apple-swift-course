import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    var birthday: Date
    
    init(name: String, birthday: Date) {
        self.name = name
        self.birthday = birthday
    }
    
    var isBirhdayToday: Bool {
        Calendar.current.isDateInToday(birthday)
    }
}
