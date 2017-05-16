import Foundation
import Result

protocol CharacterDAO {
    func getAllCharacters(completion: (Result<[Character], CharactersError>) -> Void)
}
