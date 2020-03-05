//
//  String+HelpScreen.swift
//  StringLocalizationDemo
//
//  Created by Nicolás Miari on 2020/03/05.
//  Copyright © 2020 Nicolás Miari. All rights reserved.
//

import Foundation

extension String {

    private static var tableName: String {
        return "HelpScreen"
    }

    static var helpNavigationTitle: String {
        return NSLocalizedString("help_navigation_title", tableName: tableName, value: "", comment: "")
    }

    static var closeButtonTitle: String {
        return NSLocalizedString("close_button_title", tableName: tableName, value: "", comment: "")
    }
}
