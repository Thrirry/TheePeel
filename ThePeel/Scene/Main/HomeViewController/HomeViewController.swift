//
//  ViewController.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    static func viewController() -> HomeViewController? {
        return Helper.getViewController(named: "HomeViewController", inSb: "Main")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let dataResponse = data, error == nil else {
                print(error?.localizedDescription ?? "Response error")
                return
            }
            do {
                let product = try JSONDecoder().decode(Categories.self, from: dataResponse)
                print(product)
            }catch {
                print("Error In Json Data")
            }
            }.resume()
    }
}

