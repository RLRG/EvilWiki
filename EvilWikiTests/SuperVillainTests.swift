//
//  SuperVillainTests.swift
//  EvilWiki
//
//  Created by Rodrigo López-Romero Guijarro on 13/09/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

import XCTest
@testable import EvilWiki

class SuperVillainTests: XCTestCase {
    
    let mainTitle = "Dr."
    let mainName = "Octopus"
    let mainFullName = "Dr. Octopus"
        
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    
    func testDescriptionIsTitleSpaceName() {
        
        // 1. ARRANGE
        let sut = SuperVillain(title: mainTitle, name: mainName, weapon: nil) // SUT = System Under Test
        
        // 2. ACT
        let description = sut.description
        
        // 3. ASSERT
        XCTAssertEqual(mainFullName, description)
    }
    
    
    func testNameAndTitleAreExtractedFromFullName() {
        
        // 1. ARRANGEx
        let sut = SuperVillain(fullName: mainFullName) // SUT = System Under Test
        
        // 2. ACT
        
        // 3. ASSERT
        XCTAssertEqual(mainTitle, sut.title)
        XCTAssertEqual(mainName, sut.name)
    }
    
    func testAttackFiresWeapon() {
        
        // 1. ARRANGE
        let weapon = TestableWeapon()
        let sut = SuperVillain(title: mainTitle, name: mainName, weapon: weapon) // SUT = System Under Test
        
        // 2. ACT
        sut.attack()
        
        // 3. ASSERT
        XCTAssertTrue(weapon.fireWasInvoked)
    }
    
    // INNER CLASS
    class TestableWeapon: MegaWeapon {
        var fireWasInvoked = false
        func fire() {
            fireWasInvoked = true
        }
    }
    
}
