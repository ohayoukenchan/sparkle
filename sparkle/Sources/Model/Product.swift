//
//  Product.swift
//  sparkle
//
//  Created by ohayoukenchan on 2021/05/07.
//

import Firebase
import Foundation

struct Product: FirestoreModelReadable, FirestoreModelWritable {
    enum Field: String {
        case title
        case price
        case publisher
        case isbn
    }

    static var collectionRef: CollectionReference {
        return Firestore.firestore().collection("books")
    }

    var title: String
    var price: String
    var publisher: String
    var isbn: Int

    init(snapshot: DocumentSnapshot) {
        title = snapshot.stringValue(forKey: Field.title, default: "")
        price = snapshot.stringValue(forKey: Field.price, default: "")
        publisher = snapshot.stringValue(forKey: Field.publisher,  default: "")
        isbn = snapshot.intValue(forKey: Field.isbn, default: 0)
    }

    init(title: String, price: String, publisher: String, isbn: Int) {
        self.title = title
        self.price = price
        self.publisher = publisher
        self.isbn = isbn
    }

    var writeFields: [Field: Any] {
        return [
            .title: title,
            .price: price,
            .publisher: publisher,
            .isbn: isbn,
        ]
    }

    static func makeMock(owner: DocumentReference) -> Product {
        let mockProducts: [Product] = [
            Product(
                title: "たべたのだーれだ？",
                price: "1100",
                publisher: "福音館書店",
                isbn: 9784834086058
            ),
            Product(
                title: "おおきなキャンドル 馬車にのせ",
                price: "1540",
                publisher: "偕成社",
                isbn: 9784032326505
            ),
            Product(
                title: "うちゅうスケート",
                price: "1980",
                publisher: "復刊ドットコム ",
                isbn: 9784835451275
            ),
            Product(
                title: "ニットさん",
                price: " 1430",
                publisher: "イースト・プレス",
                isbn: 9784781608587
            ),
        ]
        return mockProducts[Int(arc4random_uniform(UInt32(mockProducts.count)))]
    }
}
