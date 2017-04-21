//
//  CharactersContract.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 19/04/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import UIKit

protocol CharactersView: IndicatableView {
    var presenter: CharactersPresentation! { get set }
    func showNoContentScreen()
    func showCharactersData(_ characters: [Character])
}

protocol CharactersPresentation: class {
    weak var view: CharactersView? { get set }
    var interactor: CharactersUseCase! { get set }
    var router: CharactersWireframe! { get set }
    func viewDidLoad()
    func didSelectCharacter(_ character: Character)
}

protocol CharactersUseCase: class {
    weak var output: CharactersInteractorOutput! { get set }
    func fetchCharacters()
}

protocol CharactersInteractorOutput: class {
    func charactersFetched(_ characters: [Character])
    func charactersFetchFailed()
}

protocol CharactersWireframe: class {
    weak var viewController: UIViewController? { get set }
    func presentDetails(forCharacter character: Character)
    static func assembleModule() -> UIViewController
}
