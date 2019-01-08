//
//  HomePresenter.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

class HomePresenter: NSObject {
    weak var homeDelegate: HomeDelegate?
    fileprivate let categoryServer: CategoryService
    
    init(categoryServer: CategoryService) {
        self.categoryServer = categoryServer
    }
    
    public func callAPI(isCall: Bool) {
        if isCall {
            
        } else {
            
        }
    }
}
