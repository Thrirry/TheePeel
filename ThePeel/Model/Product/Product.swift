//
//  Product.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

class Product: Codable {
    var name: String
    var pizza: [Detail]
    
    enum CodingKeys: String, CodingKey {
        case name
        case pizza
    }
    
    init(name: String, pizza: [Detail]) {
        self.name = name
        self.pizza = pizza
    }
}


class Detail: Codable {
    var id: String
    var name: String
    var category: String
    var detail: Pizza?
    var imageUrl: Image?
    
    init(id: String, name: String, category: String, detail: Pizza?, imageUrl: Image?) {
        self.id = id
        self.name = name
        self.category = category
        self.detail = detail
        self.imageUrl = imageUrl
    }
}

class Image: Codable {
    var firstImg: String
    var secondImg: String
    var thirdImg: String
    
    enum CodingKeys: String, CodingKey {
        case firstImg
        case secondImg
        case thirdImg
    }
}
