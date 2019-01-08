//
//  ViewController.swift
//  ThePeel
//
//  Created by Gone on 1/8/19.
//  Copyright © 2019 Gone. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    // MARK: - IBOutlet
    
    // MARK: - Properties
    var homePresenter: HomePresenter!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        setupUI()
    }
    
    // MARK: - Initialization
    static func viewController() -> HomeViewController? {
        return Helper.getViewController(named: "HomeViewController", inSb: "Main")
    }
    
    func setupUI() {
        view.backgroundColor = .white
    }

    // MARK: - Private Method
    fileprivate func initPresenter() {
        homePresenter = HomePresenter.init(categoryServer: CategoryService())
        homePresenter.homeDelegate = self
    }
    
    fileprivate func callAPI() {
        homePresenter.callAPI(isCall: true)
    }
    
    // MARK: - Public Method
    // MARK: - Target
    // MARK: - IBAction
    // MARK: - Service
}

extension HomeViewController: HomeDelegate {
    func categoriesSuccess(category: Categories) {
        
    }
    
    func categoriesFailed() {
        
    }
}
