//
//  Item.swift
//  Hello World
//
//  Created by Greg PFISTER on 17/02/2024.
//

import Foundation
import SwiftData

@Model
final class GPSubItem {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
