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
    
    var sut: SuperVillain! // System Under Test
    var weapon:  TestableWeapon!
    
    override func setUp() {
        super.setUp()
        
        weapon = TestableWeapon()
        sut = SuperVillain.main(weapon: nil)
    }
    
    override func tearDown() {
        super.tearDown()
    }

    
    func testDescriptionIsTitleSpaceName() {
    
        // 2. ACT
        let description = sut.description
        
        // 3. ASSERT
        XCTAssertEqual(TestData.mainFullName, description)
    }
    
    
    func testNameAndTitleAreExtractedFromFullName() {
        
        // 3. ASSERT
        XCTAssertEqual(TestData.mainTitle, sut.title)
        XCTAssertEqual(TestData.mainName, sut.name)
    }
    
    func testAttackFiresWeapon() {
        
        // 1. ARRANGE
        let sut = SuperVillain.main(weapon: weapon) // SUT = System Under Test
        
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
