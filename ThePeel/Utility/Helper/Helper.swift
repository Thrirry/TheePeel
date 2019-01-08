//
//  Helper.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

struct Helper {

    /// Getting viewcontroller instance from storyboard
    ///
    /// - Parameters:
    ///   - named: ViewController Identifier string
    ///   - sbNamed: Storyboard name string
    /// - Returns: An optional ViewController instance
    static func getViewController<T: UIViewController> (named: String, inSb sbNamed: String) -> T? {
        return UIStoryboard(name: sbNamed, bundle: nil).instantiateViewController(withIdentifier: named) as? T
    }
}
