//
//  Location.swift
//  Treads
//
//  Created by Viktor Yamchinov on 13.02.2020.
//  Copyright © 2020 Viktor Yamchinov. All rights reserved.
//

import Foundation
import RealmSwift

class Location: Object {
    @objc dynamic public private(set) var latitude = 0.0
    @objc dynamic public private(set) var longitude = 0.0
    
    convenience init(latitude: Double, longitude: Double) {
        self.init()
        self.latitude = latitude
        self.longitude = longitude
    }
}
