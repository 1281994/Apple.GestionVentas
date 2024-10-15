//
//  Item.swift
//  Apple.BimboNicaragua
//
//  Created by Alex on 15/10/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
