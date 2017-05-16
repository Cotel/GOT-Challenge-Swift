import Foundation
import Result

protocol CharactersAPIClient : CharacterDAO {
    func getAllCharacters (_ completion: (Result<[Character], CharactersError>) -> Void)
}
