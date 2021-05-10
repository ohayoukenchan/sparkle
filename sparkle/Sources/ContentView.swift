//
//  ContentView.swift
//  sparkle
//
//  Created by ohayoukenchan on 2021/05/03.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @ObservedObject var viewModel: ProductsViewModel

    init(viewModel: ProductsViewModel) {
        self.viewModel = viewModel
        self.viewModel.fetchProducts()
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Logo()
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("ままま書店")
                    .font(.title)
            List {
                if !viewModel.products.isEmpty {
                    productRowSection
                }
            }
            HStack {
                Text("絵本を中心にあつかう本屋です")
                    .font(.subheadline)
                Spacer()
                Text("東京/荻窪")
                    .font(.subheadline)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ProductsViewModel())
    }
}

private extension ContentView {
    var productRowSection: some View {
//        ForEach(self.viewModel.products, content: ProductView.init(viewModel:))
        ForEach(0..<viewModel.products.count) { index in
            ProductView.init(viewModel: viewModel.products[index])
        }
    }
}

