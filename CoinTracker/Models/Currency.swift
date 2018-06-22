//
//  Currency.swift
//  CoinTracker
//
//  Created by Alima Seytkhan on 4/25/18.
//  Copyright © 2018 Alima Moon. All rights reserved.
//

import UIKit

class Currency: NSObject {
    
    //MARK: -properties
    var codeCurrency: String?
    var rateCurrency: String?
    
    init(codeCurrency: String, rateCurrency: String) {
        self.codeCurrency = codeCurrency
        self.rateCurrency = rateCurrency
    }
    
//    init(dictionary: [String: Any]) {
//
//        let codeDic = dictionary["coordinate"] as? [String: Double]
//        self.coordinate = CLLocationCoordinate2D(latitude: (coordinateData?["lat"] ?? 0),
//                                                 longitude: (coordinateData?["long"] ?? 0))
//        self.title = dictionary["title"] as? String
//        categories = dictionary["categories"] as? String
//        self.address = dictionary["address"] as? String
//        self.contact = dictionary["contact"] as? String
//        self.timetable = dictionary["timetable"] as? String
//        self.imageLink = dictionary["imageLink"] as? String
//        self.sale = dictionary["sale"] as? String
//
//        super.init()
//    }
    
}
