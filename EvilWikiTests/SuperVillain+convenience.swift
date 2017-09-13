//
//  SuperVillain+convenience.swift
//  EvilWiki
//
//  Created by Rodrigo López-Romero Guijarro on 13/09/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

import Foundation
@testable import EvilWiki

extension SuperVillain {
    
    static func main(weapon: MegaWeapon?) -> SuperVillain {
        return SuperVillain(title: TestData.mainTitle, name: TestData.mainName, weapon: weapon)
    }
}
