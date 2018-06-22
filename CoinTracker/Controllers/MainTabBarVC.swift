//
//  ViewController.swift
//  CoinTracker
//
//  Created by Alima Seytkhan on 4/25/18.
//  Copyright © 2018 Alima Moon. All rights reserved.
//

import UIKit

class MainTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - settings TabBar ViewControllers
        let marketVC  = UINavigationController(rootViewController: MarketVC())
        marketVC.tabBarItem.title = "Валюты"
        marketVC.tabBarItem.image = UIImage(named: "marketImageButton")
        marketVC.tabBarItem.selectedImage = UIImage(named: "marketImageButtonActive")?.withRenderingMode(.alwaysOriginal)

        let transactionsVC = TransactionsVC()
        transactionsVC.tabBarItem.title = "Транзакций"
        transactionsVC.tabBarItem.image = UIImage(named: "transImageButton")
        transactionsVC.tabBarItem.selectedImage = UIImage(named: "transImageButtonActive")?.withRenderingMode(.alwaysOriginal)

        let convertorVC = ConvertorVC()
        convertorVC.tabBarItem.title = "Конвертор"
        convertorVC.tabBarItem.image = UIImage(named: "convertorImageButton")
        convertorVC.tabBarItem.selectedImage = UIImage(named: "convertorImageButtonActive")?.withRenderingMode(.alwaysOriginal)

        self.viewControllers = [marketVC, transactionsVC, convertorVC]
        
        self.tabBar.tintColor = UIColor.black
        self.tabBar.layer.borderColor = UIColor(red: 199/255, green: 199/255, blue: 204/255, alpha: 1).cgColor
        self.tabBar.layer.borderWidth = 0.4
        self.tabBar.isTranslucent = false
    }

}

