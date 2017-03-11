//
//  CharactersAPIClient.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 05/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import Foundation
import Result

protocol CharactersAPIClient {
    func getAllCharacters (_ completion: (Result<[Character], CharactersError>) -> Void)
}
