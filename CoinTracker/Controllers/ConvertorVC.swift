//
//  ConvertorVC.swift
//  CoinTracker
//
//  Created by Alima Seytkhan on 4/25/18.
//  Copyright © 2018 Alima Moon. All rights reserved.
//

import UIKit

class ConvertorVC: UIViewController {

    private var convertorView: ConvertorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        let mainView = ConvertorView(frame: view.frame)
        convertorView = mainView
        
        //adding convertorView to ConvertorVC`s view
        self.view.addSubview(convertorView)
    }
    
    private func setupConstraints(){
        convertorView.fillSuperView()
    }

}
