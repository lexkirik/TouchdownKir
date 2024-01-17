//
//  Shop.swift
//  TouchdownKir
//
//  Created by Test on 25.09.23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
