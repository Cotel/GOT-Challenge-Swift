//
//  DetailsRouter.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 19/04/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import UIKit

class DetailsRouter: DetailsWireframe {
    static func assembleModule(_ character: Character) -> UIViewController {
        let view = R.storyboard.gOT.characterDetailViewController()
        let presenter = DetailsPresenter()

        view?.presenter = presenter

        presenter.view = view
        presenter.character = character

        return view!
    }
}
