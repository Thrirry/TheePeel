//
//  Categories.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

class Categories: Codable {
    var name: String
    var product: [Product]
    
    enum CodingKeys: String, CodingKey {
        case name
        case product
    }
    
    init(name: String, product: [Product]) {
        self.name = name
        self.product = product
    }
}
