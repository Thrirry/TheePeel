//
//  Other.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

class Dessert: Codable {
    var name: String
    var price: String
    var weight: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case price
        case weight
    }
    
    init(name: String, price: String, weight: String) {
        self.name = name
        self.price = price
        self.weight = weight
    }
}
