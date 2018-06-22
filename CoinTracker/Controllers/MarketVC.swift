//
//  MarketVC.swift
//  CoinTracker
//
//  Created by Alima Seytkhan on 4/25/18.
//  Copyright © 2018 Alima Moon. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MarketVC: UIViewController {
    
    var marketView: MarketView!
    var currencyArray = [Currency]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
        downloadData(url: "https://api.coindesk.com/v1/bpi/currentprice.json")
        navigationItem.title = "Курс биткоина"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont(name: "Avenir", size: 20)!, NSAttributedStringKey.foregroundColor: UIColor.black]
    }
    
    //MARK: - functions
    private func setupViews() {
        self.view.backgroundColor = .white
        
        let mainView = MarketView(frame: view.frame)
        self.marketView = mainView
        //adding Marketview to viewcontroller view
        self.view.addSubview(marketView)
    }
    
    private func setupConstraints() {
        marketView.fillSuperView()
    }
    
    private func downloadData(url: String) {
        
        //Alamofire usage
        Alamofire.request(url, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
            case .failure(let error):
                print(error)
            }
        }
    }
//        Alamofire.request(url).validate().responseJSON { response in
//            switch response.result {
//            case .success:
//                print("Validation Successful")
//                if let value = response.result.value {
//                    let json = JSON(data: (value as! AnyObject) as! Data)
//                    print(json)
//                }
//            case .failure(let error):
//                print(error)
//            }
//        }
    
}
