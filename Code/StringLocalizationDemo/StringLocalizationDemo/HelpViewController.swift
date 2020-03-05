//
//  HelpViewController.swift
//  StringLocalizationDemo
//
//  Created by Nicolás Miari on 2020/03/05.
//  Copyright © 2020 Nicolás Miari. All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = .helpNavigationTitle
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: .closeButtonTitle, style: .done, target: self, action: #selector(close(_:)))
    }

    @objc func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
