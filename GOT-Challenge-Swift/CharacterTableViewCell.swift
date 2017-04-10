//
//  CharacterTableViewCell.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 11/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import UIKit
import SDWebImage

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
}

extension CharacterTableViewCell {
    func configureForCharacter(_ character: Character) {
        nameLabel.text = character.name
        characterImageView.sd_setImage(with: character.image)
        self.layoutSubviews()
    }
}
