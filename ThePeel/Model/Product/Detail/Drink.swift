//
//  Drink.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

class Drink: Codable {
    var price: String
    var volume: String
    
    enum CodingKeys: String, CodingKey {
        case price
        case volume
    }
    
    init(price: String, volume: String) {
        self.price = price
        self.volume = volume
    }
}
