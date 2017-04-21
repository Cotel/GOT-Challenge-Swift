//
//  DetailsContract.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 19/04/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import UIKit

protocol DetailsView: class {
    var presenter: DetailsPresentation! { get set }

    func showDetails(forCharacter character: Character)
}

protocol DetailsPresentation: class {
    weak var view: DetailsView? { get set }

    func viewDidLoad()
}

protocol DetailsWireframe: class {
    static func assembleModule(_ character: Character) -> UIViewController
}
