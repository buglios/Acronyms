//
//  MainCoordinator.swift
//  AlbertsonsMobilityChallenge
//
//  Created by Serge Tsogtbaatar on 12/15/21.
//

import UIKit

protocol Coodinator {
    var navigationController: UINavigationController { get set }
    func start()
}

class MainCoordinator: Coodinator {
    
    var navigationController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let networkmanager = NetworkManager()
        let viewModel = AcronymViewModel(network: networkmanager)
        let vc = AcronymSeachViewController(viewModel: viewModel)
        self.navigationController.pushViewController(vc, animated: false)
    }
    
    
    
}
