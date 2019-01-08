//
//  PizzaService.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

class PizzaService: NSObject {
    func getPizza(_ callBack: @escaping (Categories) -> Void) {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let dataResponse = data, error == nil else {
                print(error?.localizedDescription ?? "Response error")
                return
            }
            do {
                let product = try JSONDecoder().decode(Categories.self, from: dataResponse)
                callBack(product)
            }catch {
                print("Error In Json Data")
            }
        }.resume()
    }
}
