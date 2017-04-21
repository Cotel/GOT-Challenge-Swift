//
//  CharacterDetailViewController.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 15/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import UIKit

class CharacterDetailViewController: UIViewController, DetailsView {

    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    var presenter: DetailsPresentation!
    func showDetails(forCharacter character: Character) {
        self.title = character.name
        nameLabel.text = character.name
        descriptionLabel.text = "Description: " + character.description!
        characterImage
            .sd_setImage(with: character.image as URL!)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.viewDidLoad()
    }
}
