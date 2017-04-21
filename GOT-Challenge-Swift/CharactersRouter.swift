//
//  CharactersRouter.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 19/04/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import Foundation
import UIKit


class CharactersRouter: CharactersWireframe{
    weak var viewController: UIViewController?
    static func assembleModule() -> UIViewController {
        let view = R.storyboard.gOT.charactersViewController()
        let presenter = CharactersPresenter()
        let interactor = CharactersInteractor()
        let router = CharactersRouter()

        let navigation = UINavigationController(rootViewController: view!)
        view?.presenter = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router

        interactor.output = presenter

        router.viewController = view
        
        return navigation
    }

    func presentDetails(forCharacter character: Character) {
        let detailsModuleViewController = DetailsRouter.assembleModule(character)
        viewController?.navigationController?.pushViewController(detailsModuleViewController, animated: true)
    }
}
