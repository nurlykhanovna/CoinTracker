//
//  MarketView.swift
//  CoinTracker
//
//  Created by Alima Seytkhan on 4/25/18.
//  Copyright © 2018 Alima Moon. All rights reserved.
//

import UIKit

class MarketView: UIView {
    
    let currencySegmentedController: UISegmentedControl = {
        let segcont = UISegmentedControl(items: ["USD", "KZT", "EUR"])
        segcont.selectedSegmentIndex = 1
        return segcont
    }()
    
    let periodSegmentedController: UISegmentedControl = {
        let segcont = UISegmentedControl(items: ["Неделя", "Месяц", "Год"])
        segcont.selectedSegmentIndex = 0
        return segcont
    }()
    
    let graphView: UIView = {
        let graphView = UIView()
        graphView.backgroundColor = .green
        return graphView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func setupViews() {
        [currencySegmentedController, graphView, periodSegmentedController].forEach {
            self.addSubview($0)
        }
    }
    
    private func setupConstraints() {
        
        currencySegmentedController.anchor(top: self.safeTopAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 10, bottom: 0, right: 10), size: .init(width: 0, height: 30))
        
        graphView.setOnlyAnchorSize(size: .init(width: self.frame.width, height: 300))
        graphView.centerAnchor(to: self)
        
        periodSegmentedController.anchor(top: graphView.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 15, left: 20, bottom: 0, right: 20), size: .init(width: 0, height: 30))
    }

}
