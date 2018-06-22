//
//  StackView.swift
//  CoinTracker
//
//  Created by Alima Seytkhan on 4/25/18.
//  Copyright © 2018 Alima Moon. All rights reserved.
//

import UIKit

extension UIView {

    func createStackViewVertical(views: [UIView], spacingNo: CGFloat) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = spacingNo
        return stackView
    }
    
    func createStackViewHorizontal(views: [UIView],  spacingNo: CGFloat) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = spacingNo
        return stackView
    }

}
