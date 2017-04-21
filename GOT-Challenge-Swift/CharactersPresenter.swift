//
//  CharactersPresenter.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 19/04/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import Foundation

class CharactersPresenter: CharactersPresentation{
    weak var view: CharactersView?
    var interactor: CharactersUseCase!
    var router: CharactersWireframe!
    var characters = [Character](){
        didSet {
            if characters.count > 0 {
                view?.showCharactersData(characters)
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
        interactor.fetchCharacters()
    }
}

extension CharactersPresenter: CharactersInteractorOutput{
    func charactersFetched(_ characters: [Character]) {
        self.characters = characters
        view?.hideActivityIndicator()
    }
    internal func charactersFetchFailed() {
        view?.showNoContentScreen()
        view?.hideActivityIndicator()
    }

}
