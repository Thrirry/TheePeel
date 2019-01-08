//
//  Application.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

struct Application {
    // MARK: - SingleTon pattern
    static let shared = Application()
    
    private init() {}
    
    func configMainInterface(window: UIWindow) {
        
        let homeViewController = HomeViewController()
        let navigationController = UINavigationController(rootViewController: homeViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
