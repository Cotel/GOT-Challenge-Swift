import Foundation

class CharactersError : Error {
    var message: String
    
    init(message: String) {
        self.message = message
    }
}
