import Foundation

struct Menu: Identifiable {
    var id: UUID = UUID()
    var imageName: String
    var name: String
    var price: String
    var description: String
}
