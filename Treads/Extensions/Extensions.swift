//
//  Extensions.swift
//  Treads
//
//  Created by Viktor Yamchinov on 28.01.2020.
//  Copyright © 2020 Viktor Yamchinov. All rights reserved.
//

import Foundation

extension Double {
    func metersToMiles(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return ((self / 1609.34) * divisor).rounded() / divisor
    }
}
