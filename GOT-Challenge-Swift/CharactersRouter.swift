import Foundation
import UIKit


class CharactersRouter {
    weak var viewController: UIViewController?
    static func assembleModule() -> UIViewController {
        let view = R.storyboard.gOT.charactersViewController()
        let datasource = FakeCharactersAPIClient()
        let getAllCharacters = CharacterListInteractor()
        let presenter = CharactersPresenter()
        let router = CharactersRouter()

        let navigation = UINavigationController(rootViewController: view!)
        view?.presenter = presenter

        presenter.view = view
        presenter.getAllCharacters = getAllCharacters
        presenter.router = router

        getAllCharacters.datasource = datasource
        getAllCharacters.output = presenter

        router.viewController = view
        
        return navigation
    }

    func presentDetails(forCharacter character: Character) {
        let detailsModuleViewController = DetailsRouter.assembleModule(character)
        viewController?.navigationController?.pushViewController(detailsModuleViewController, animated: true)
    }
}
