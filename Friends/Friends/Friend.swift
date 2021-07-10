import Foundation

struct Friend: Identifiable, Equatable {
    
    var id = UUID()
    
    var name: String
    var icon: String
    var school: String
    
    var slothImage: String
    
    var attack: Double = .random(in: 0...15)
    var defence: Double = .random(in: 0...15)
    
    var types: [FriendType]
    
}
