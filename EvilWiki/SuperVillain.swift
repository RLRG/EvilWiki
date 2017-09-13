//
//  SuperVillain.swift
//  EvilWiki
//
//  Created by Rodrigo López-Romero Guijarro on 13/09/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

import Foundation

struct SuperVillain: CustomStringConvertible {
    
    var title: String
    var name: String
    var weapon: MegaWeapon? = nil // It takes this value if we don't say anything else.
    
    var description: String {
        return "\(title) \(name)"
    }
    
    func attack() {
        weapon?.fire()
    }
}

extension SuperVillain {
    init(fullName: String) {
        let components = fullName.components(separatedBy: " ")
        title = components[0]
        name = components[1]
    }
}
