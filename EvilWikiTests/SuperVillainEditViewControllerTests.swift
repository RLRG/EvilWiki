//
//  SuperVillainEditViewControllerTests.swift
//  EvilWiki
//
//  Created by Rodrigo López-Romero Guijarro on 13/09/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

import XCTest
import UIKit
@testable import EvilWiki

class SuperVillainEditViewControllerTests: XCTestCase {
    
    var sut: SuperVillainEditViewController! // System Under Test: ViewController !!
    var presenter: TestablePresenter!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: SuperVillainEditViewController.ID) as! SuperVillainEditViewController
        presenter = TestablePresenter()
        sut.presenter = presenter
    }
    
    override func tearDown() {
        sut = nil
        presenter = nil
        super.tearDown()
    }

    func testPresenterIsInformedWhenViewIsReady() {
        
        // 2. ACT
        // sut.viewDidLoad() <<<<<<<<<<------- DON'T DO THIS !!!! WHAT WE SHOULD DO IS:
        _ = sut.view // --> ViewController does the job of viewDidLoad !
        
        // 3. ASSERT (we want to check that the viewReady method was called)
        XCTAssertTrue(presenter.viewReadyInvoked)
    }
    
    // INNER CLASS !! BE CAREFUL, IT IS NOT A PROTOCOL, WE CAN CREATE A SUBCLASS
    
    class TestablePresenter: SuperVillainPresenter {
        var viewReadyInvoked = false
        
        override func viewReady() {
            viewReadyInvoked = true
        }
    }
}
