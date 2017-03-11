//
//  Character.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 05/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import Foundation

struct Character {
    let id: String
    let name: String
    let description: String?
    let image: URL?
    var formalDescription: String {
        get {
            return "\(name) - \(description ?? "No description provided.")"
        }
    }
}
