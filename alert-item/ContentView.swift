//
//  ContentView.swift
//  alert-item
//
//  Created by Juke Jaster on 9/13/20.
//  Copyright © 2020 Juke Jaster. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModel = ContentViewModel()
    
    var body: some View {
        Text("Hello, World!")
            .onTapGesture {
                self.viewModel.foo()
        }
        .onLongPressGesture {
            self.viewModel.bar()
        }
        .alert(item: $viewModel.alertItem) { item in
            Alert(title: Text(item.type.title),
                  message: Text(item.type.message),
                  dismissButton: item.type.dismissButton)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
