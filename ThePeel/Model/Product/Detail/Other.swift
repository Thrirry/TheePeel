//
//  Other.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

class Dessert: Codable {
    var weight: String
    var price: String
    
    enum CodingKes: String, CodingKey {
        case weight
        case price
    }
    
    init(weight: String, price: String) {
        self.weight = weight
        self.price = price
    }
}
