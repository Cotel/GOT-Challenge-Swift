//
//  XCTestCase.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 16/03/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import Foundation
import KIF

extension XCTestCase {
    func tester(_ file: String = #file, line: Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }

    func system(_ file: String = #file, line: Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}
