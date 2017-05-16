import Foundation

struct Character {
    let id: String
    let name: String
    let description: String?
    let image: URL?
    var formalDescription: String {
        get {
            return "\(name) - \(description ?? "No description provided.")"
        }
    }
}
