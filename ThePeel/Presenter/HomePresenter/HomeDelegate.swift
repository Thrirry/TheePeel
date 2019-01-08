//
//  HomeDelegate.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

protocol HomeDelegate: NSObjectProtocol {
    func categoriesSuccess(category: Categories)
    func categoriesFailed()
}

extension HomeDelegate {
    public func categoriesSuccess(category: Categories){ }
    public func categoriesFailed(){ }
}
