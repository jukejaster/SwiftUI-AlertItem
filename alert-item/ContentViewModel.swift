//
//  ContentViewModel.swift
//  alert-item
//
//  Created by Juke Jaster on 9/13/20.
//  Copyright © 2020 Juke Jaster. All rights reserved.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var alertItem: AlertItem?
    
    func foo() {
        self.alertItem = .init(type: .error(message: "Something went wrong. Please try again later."))
    }
    
    func bar() {
        self.alertItem = .init(type: .custom(title: "How ya doin??", message: "you know you're beautiful right?!"))
    }
}
