//
//  Character.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 08/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import Foundation

@testable import GOT_Challenge_Swift

extension GOT_Challenge_Swift.Character : Equatable {
}
public func == (lhs: GOT_Challenge_Swift.Character, rhs: GOT_Challenge_Swift.Character) -> Bool {
    return lhs.id == rhs.id
}

