//
//  RootRouter.swift
//  GOT-Challenge-Swift
//
//  Created by Conrado Mateu Gisbert on 19/04/17.
//  Copyright © 2017 conradomateu. All rights reserved.
//

import UIKit

class RootRouter: RootWireframe{
    func presentCharactersScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        window.rootViewController =  CharactersRouter.assembleModule()
    }
}
