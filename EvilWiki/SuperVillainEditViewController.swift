//
//  SuperVillainEditViewController.swift
//  EvilWiki
//
//  Created by Rodrigo López-Romero Guijarro on 13/09/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

import Foundation
import UIKit

class SuperVillainEditViewController: UIViewController, SuperVillainView {
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    var presenter: SuperVillainPresenter?
    
    static let ID = "SuperVillainEditViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewReady()
    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func save(_ sender: UIBarButtonItem) {
    }
    
    func enableSaveButton(enabled: Bool) {
        saveButton.isEnabled = enabled
    }
}
