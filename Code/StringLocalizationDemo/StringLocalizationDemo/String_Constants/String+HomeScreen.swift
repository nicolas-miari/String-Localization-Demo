//
//  String+HomeScreen.swift
//  StringLocalizationDemo
//
//  Created by Nicolás Miari on 2020/03/05.
//  Copyright © 2020 Nicolás Miari. All rights reserved.
//

import Foundation

extension String {

    /**
     The name of the strings file that corresponds to this extension (HomeScreen), used as the
     `tableName` argument of each call to `NSLocalizedString(_:tableName:bunbdle:value:comment)`.

     The table name must be private so that it isn't visible from extensions for other table names,
     avoiding coliision.

     - important: Make sure you don't have a **storyboard** also named "HomeScreen" and add localizations to
     it in the form of strings: if you do, you there will be two copies of each .strings file
     (on created on the project navigator, and one from the storyboard) and at runtime one of
     them **will be igonred silently**.
     */
    private static var tableName: String {
        return "HomeScreen"
    }

    static var homeNavigationTitle: String {
        /**
         `key` must match the key in the corresponding .strings file. It must be unique within each .strings gile.
          **It must not be empty**.

         `tableName` must match the name iof the corresponding .strings file (declared as a
         private static property at the top of the extension, for convenience).

         `bundle` can be ommitted (the default `nil` results in the main bundle being used).

         `value` must be **empty** (this macro is not for exporting/creating the .strings file,
         only for reading from it).

         `comment` can be empty for the same reason.
         */
        return NSLocalizedString("home_navigation_title", tableName: tableName, value: "", comment: "")
    }

    static var helpButtonTitle: String {
        return NSLocalizedString("help_button_title", tableName: tableName, value: "", comment: "")
    }
}
