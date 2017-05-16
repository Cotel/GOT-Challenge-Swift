import Foundation

class CharactersPresenter {
    var view: CharactersListView?
    var getAllCharacters: CharacterListInteractor!
    var router: CharactersRouter!
    var characters = [Character](){
        didSet {
            if characters.count > 0 {
                view?.showCharactersData(characters: characters)
            } else {
                view?.showNoContentScreen()
            }
        }
    }
    
    func didSelectCharacter(_ character: Character){
        router.presentDetails(forCharacter: character)
    }
    func viewDidLoad() {
        view?.showActivityIndicator()
        getAllCharacters.execute()
    }
}

extension CharactersPresenter: CharacterListOutput{
    func charactersSuccess(characters: [Character]) {
        self.characters = characters
        view?.hideActivityIndicator()
    }
    internal func charactersFail(error: CharactersError) {
        view?.showNoContentScreen()
        view?.hideActivityIndicator()
    }

}

protocol CharactersListView {
    func showActivityIndicator()
    func hideActivityIndicator()
    func showNoContentScreen()
    func showCharactersData(characters: [Character])
}
