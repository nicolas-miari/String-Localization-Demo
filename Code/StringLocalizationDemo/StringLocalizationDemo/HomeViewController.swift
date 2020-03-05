//
//  HomeViewController.swift
//  StringLocalizationDemo
//
//  Created by Nicolás Miari on 2020/03/05.
//  Copyright © 2020 Nicolás Miari. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet private var helpButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.navigationItem.title = .homeNavigationTitle // No NSLocalizedString(...) clutter nor any hard-coded text.

        helpButton.setTitle(.helpButtonTitle, for: .normal) // Same for button title
    }
}
