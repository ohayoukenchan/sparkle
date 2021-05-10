//
//  ProductViewModel.swift
//  sparkle
//
//  Created by ohayoukenchan on 2021/05/08.
//

import Foundation
import SwiftUI

struct ProductViewModel {
    //var id: ObjectIdentifier
    
    private let item: Document<Product>

    var title: String {
        item.data.title
    }

    var price: String {
        item.data.price
    }

    var isbn: Int {
        item.data.isbn
    }

    var publisher: String {
        item.data.publisher
    }

    init(item: Document<Product>) {
        self.item = item
    }
}

extension ProductViewModel: Hashable {
    static func == (lhs: ProductViewModel, rhs: ProductViewModel) -> Bool {
        return lhs.title == rhs.title
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(self.title)
    }
}
