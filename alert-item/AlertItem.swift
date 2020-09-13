//
//  AlertItem.swift
//  alert-item
//
//  Created by Juke Jaster on 9/13/20.
//  Copyright © 2020 Juke Jaster. All rights reserved.
//

import SwiftUI

struct AlertItem: Identifiable {
    enum ItemType {
        case error(title: String = "Error", message: String = "Something went wrong.")
        case custom(title: String, message: String)
        
        var title: String {
            switch self {
            case let .error(title, _):
                return title
            case let .custom(title, _):
                return title
            }
        }
        
        var message: String {
            switch self {
            case let .error(_, message):
                return message
            case let .custom(_, message):
                return message
            }
        }
        
        var dismissButton: Alert.Button? {
            return .default(Text("OK"))
        }
    }
    
    let id = UUID()
    let type: ItemType
}
