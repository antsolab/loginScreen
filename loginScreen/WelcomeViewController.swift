//
//  WellcomeViewController.swift
//  loginScreen
//
//  Created by Andrey on 13.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    var welcomeName: String = ""
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcomeName)"

    }
    
}

