//
//  SuperVillainPresenterTests.swift
//  EvilWiki
//
//  Created by Rodrigo López-Romero Guijarro on 13/09/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

import XCTest
@testable import EvilWiki

class SuperVillainPresenterTests: XCTestCase {
    
    var sut: SuperVillainPresenter!
    var view: TestableSuperVillainEditView!
    
    override func setUp() {
        super.setUp()
        view = TestableSuperVillainEditView()
        sut = SuperVillainPresenter()
        sut.view = view
    }
    
    override func tearDown() {
        sut = nil
        view = nil
        super.tearDown()
    }
    
    func testViewReadyDisablesSaveButton() {
        
        // 2. ACT
        sut.viewReady()
        
        // 3. ASSERT
        XCTAssertFalse(view.saveEnabled)
    }
    
    // TEST DOUBLE: SPY
    class TestableSuperVillainEditView: SuperVillainView {
        
        var saveEnabled = true
        
        func enableSaveButton(enabled: Bool) {
            saveEnabled = enabled
        }
    }
}
