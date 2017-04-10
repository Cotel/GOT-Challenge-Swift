//
//  CharactersGenerator.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 11/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import Foundation
@testable import GOT_Challenge_Swift

class CharactersGenerator {
    static func with(id: String = "0123",
                     name: String = "Jonh Snow",
                     description: String? = nil,
                     image: URL? = nil) -> GOT_Challenge_Swift.Character {
                return GOT_Challenge_Swift.Character(id: id, name: name, description: description, image: image)
    }

}
