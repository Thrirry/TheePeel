//
//  Drink.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

class Drink: Codable {
    var name: String
    var price: String
    var volume: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case price
        case volume
    }
    
    init(name: String, price: String, volume: String) {
        self.name = name
        self.price = price
        self.volume = volume
    }
}
