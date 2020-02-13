//
//  RealmConfig.swift
//  Treads
//
//  Created by Viktor Yamchinov on 14.02.2020.
//  Copyright © 2020 Viktor Yamchinov. All rights reserved.
//

import Foundation
import RealmSwift

class RealmConfig {
    static var runDataConfig: Realm.Configuration {
        let realmPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(REALM_RUN_CONFIG)
        let config = Realm.Configuration(fileURL: realmPath,
                                         schemaVersion: 1,
                                         migrationBlock: {migration, oldSchema in
                                            if (oldSchema < 1) {
                                                // nothing to do
                                            }
        })
        return config
    }
}
