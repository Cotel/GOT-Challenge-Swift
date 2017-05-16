import Foundation


class CharacterListInteractor: Command {
    var output: CharacterListOutput!
    var datasource: CharacterDAO!
    
    func execute() {
        datasource.getAllCharacters { result in
            switch result {
            case .success(let characters):
                self.output.charactersSuccess(characters: characters)
                break
            case .failure( _):
                self.output.charactersFail(error: CharactersError(message: "Hubo un error"))
                break

            }
        }
    }
}

protocol CharacterListOutput {
    func charactersSuccess(characters: [Character])
    func charactersFail(error: CharactersError)
}
