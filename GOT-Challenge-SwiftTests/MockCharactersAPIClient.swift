//
//  MockCharactersAPIClient.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 09/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import Foundation
import Result
@testable import GOT_Challenge_Swift

class MockCharactersAPIClient: CharactersAPIClient {
    var characters: [GOT_Challenge_Swift.Character]?
    var getCharactersError: CharactersError?

    func getAllCharacters(_ completion: (Result<[GOT_Challenge_Swift.Character], CharactersError>) -> Void) {
        if let characters = characters {
            completion(Result(characters))
        } else if let getCharactersError = getCharactersError {
            completion(Result(error: getCharactersError))
        }

    }

}
