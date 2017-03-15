//
//  CharacterDetailViewController.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 15/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import UIKit

class CharacterDetailViewController: UIViewController {


    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!

    var character: Character!

    override func viewDidLoad() {
        super.viewDidLoad()
        show()
    }
    func show() {
        self.title = character.name
        nameLabel.text = character.name
        descriptionLabel.text = "Description: " + character.description!
        characterImage
            .sd_setImage(with: character.image as URL!)
    }
}
