//
//  Pizza.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

class Pizza: Codable {
    var composition: String
    var nutritional: Nutritional?
    var description: Description?
    var state: String
//    var category: String
    
    enum CodingKeys: String, CodingKey {
        case composition
        case nutritional
        case description
        case state
//        case category
    }
    
    init(composition: String, nutritional: Nutritional?, description: Description?, state: String) {
        self.composition = composition
        self.nutritional = nutritional
        self.description = description
        self.state = state
//        self.category = category
    }
}

class Nutritional: Codable {
    var calories: String
    var carbohydrate: String
    var proteins: String
    var fats: String
    
    enum CodingKeys: String, CodingKey {
        case calories
        case carbohydrate
        case proteins
        case fats
    }
    
    init(calories: String, carbohydrate: String, proteins: String, fats: String) {
        self.calories = calories
        self.carbohydrate = carbohydrate
        self.proteins = proteins
        self.fats = fats
    }
}

class Description: Codable {
    var weight: String
    var size: String
    var price: String
    
    init(weight: String, size: String, price: String) {
        self.weight = weight
        self.size = size
        self.price = price
    }
}

///

class Category: Codable {
    var sea: String
    var veggie: String
    var sharp: String
    var forChildren: String
    var withoutOnion: String
    var withoutOlive: String
    var meat: String
    var lightWeight: String
    var noMushroom: String
    var sweet: String
    var cheese: String
    var new: String
    
    enum CodingKeys: String, CodingKey {
        case sea
        case veggie
        case sharp
        case forChildren
        case withoutOnion
        case withoutOlive
        case meat
        case lightWeight
        case noMushroom
        case sweet
        case cheese
        case new
    }
    
    init(sea: String, veggie: String, sharp: String, forChildren: String, withoutOnion: String, withoutOlive: String, meat: String, lightWeight: String, noMushroom: String, sweet: String, cheese: String, new: String) {
        self.sea = sea
        self.veggie = veggie
        self.sharp = sharp
        self.forChildren = forChildren
        self.withoutOnion = withoutOnion
        self.withoutOlive = withoutOlive
        self.meat = meat
        self.lightWeight = lightWeight
        self.noMushroom = noMushroom
        self.sweet = sweet
        self.cheese = cheese
        self.new = new
    }
}
