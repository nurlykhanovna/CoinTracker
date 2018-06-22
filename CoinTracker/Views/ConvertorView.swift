//
//  ConvertorView.swift
//  CoinTracker
//
//  Created by Alima Seytkhan on 4/25/18.
//  Copyright © 2018 Alima Moon. All rights reserved.
//

import UIKit

class ConvertorView: UIView {
    
    //MARK: -UI elements
    let actionSegmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["Продать", "Купить"])
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(checkerSegmentControl), for: .touchUpInside)
        return segmentedControl
    }()
    
    let sumNumberTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "введите сумму"
        tf.autocorrectionType = .no
        tf.clearButtonMode = .whileEditing
        tf.keyboardType = .numberPad
        return tf
    }()
    
    let currencySegmentedController: UISegmentedControl = {
        let segcontrol = UISegmentedControl(items: ["USD", "EUR", "KZT"])
        segcontrol.selectedSegmentIndex = 1
        return segcontrol
    }()
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.text = "Можно купить биткоинов:"
        return label
    }()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.adjustsFontSizeToFitWidth = true
        label.font = UIFont(name: "Avenir", size: 16)
        label.textColor = .black
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
    
    override func layoutSubviews() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = .white
        
        [actionSegmentedControl, sumNumberTextField, currencySegmentedController, infoLabel].forEach {
            self.addSubview($0)
        }
    }
    
    private func setupConstraints() {
        
        actionSegmentedControl.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 40, left: 30, bottom: 0, right: 30), size: .init(width: 0, height: 30))
        
        sumNumberTextField.anchor(top: actionSegmentedControl.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 25, left: 15, bottom: 0, right: 15), size: .init(width: 0, height: 40))
        
        currencySegmentedController.anchor(top: sumNumberTextField.bottomAnchor, leading: sumNumberTextField.leadingAnchor, bottom: nil, trailing: sumNumberTextField.trailingAnchor, size: .init(width: 0, height: 30))
        
        infoLabel.anchor(top: currencySegmentedController.bottomAnchor, leading: sumNumberTextField.leadingAnchor, bottom: nil, trailing: sumNumberTextField.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 20))
    }
    
    //MARK: -functions
    @objc private func checkerSegmentControl(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            infoLabel.text = "Можно купить биткоинов:"
        }
        
        if sender.selectedSegmentIndex == 1 {
            infoLabel.text = "Нужно продать биткоинов:"
        }
        self.layoutIfNeeded()
        print(sender.selectedSegmentIndex)
    }
    
}
