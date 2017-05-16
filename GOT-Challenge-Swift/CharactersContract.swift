import UIKit

protocol CharactersView: IndicatableView {
    func showNoContentScreen()
    func showCharactersData(_ characters: [Character])
}

protocol CharactersWireframe: class {
    weak var viewController: UIViewController? { get set }
    func presentDetails(forCharacter character: Character)
    static func assembleModule() -> UIViewController
}
