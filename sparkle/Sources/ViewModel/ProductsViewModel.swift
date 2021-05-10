//
//  ProductsViewModel.swift
//  sparkle
//
//  Created by ohayoukenchan on 2021/05/07.
//

import Foundation
import Combine
import Firebase
import SwiftUI

class ProductsViewModel: ObservableObject, Identifiable {

    private var listener: ListenerRegistration?
    @Published var products: [Document<Product>] = []
    
    private var disposables = Set<AnyCancellable>()
    
    func fetchProducts() {
        listener = Document<Product>
            .listen()
                //queryBuilder: { query in query.order(by: "publishedTime", descending: true).limit(to: 100) })
            { [weak self] result in
                switch result {
                case let .success(products):
                    self?.products = products
                    print("DDD: \(products)")
                    //self?.tableView.reloadData()
                case let .failure(error):
                    print("DDD: \(error)")
                }
        }
    }
}
