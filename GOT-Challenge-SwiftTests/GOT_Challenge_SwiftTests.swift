//
//  GOT_Challenge_SwiftTests.swift
//  GOT-Challenge-SwiftTests
//
//  Created by Conrado Mateu Gisbert on 05/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import XCTest
import Nimble

@testable import GOT_Challenge_Swift

class GOT_Challenge_SwiftTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testTheCharacterFormalDescriptionComposedByNameAndDescription() {
        let name = "Jonh Snow"
        let description = "The king in the north!"
        let character = CharactersGenerator.with(name: name, description: description)
        let formalDescription = character.formalDescription
        expect(formalDescription).to(equal("\(name) - \(description)"))

    }

    func testCharacterFormalDescriptionShouldIndicateTheDescriptionIsNotProvidedIfValueNil() {
        let name = "Jaime Lannister"
        let character = CharactersGenerator.with(name: name, description: nil)
        let formalDescription = character.formalDescription
        expect(formalDescription).to(equal("\(name) - No description provided."))
    }

}
