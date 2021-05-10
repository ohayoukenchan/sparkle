//
//  ProductView.swift
//  sparkle
//
//  Created by ohayoukenchan on 2021/05/08.
//

import SwiftUI

struct ProductView: View {
    private let viewModel: Document<Product>

    @State var isShowSafariAlert = false

//    var openUrl: String {
//        viewModel.url
//    }

    init(viewModel: Document<Product>) {
        self.viewModel = viewModel
    }

    var body: some View {
        HStack(alignment: .center) {
            Group {
                VStack(alignment: .leading) {
                    Text("\(viewModel.data.title)")
                    Text("\(viewModel.data.isbn)")
                    Text("\(viewModel.data.publisher)")
                    //URLImage(url: viewModel.url)
                    //.aspectRatio(contentMode: .fit)
                }
                ZStack {
                    Button("") {
                        self.isShowSafariAlert = true
                    }
                }
            }
        }.alert(isPresented: $isShowSafariAlert, content: {
            Alert(title: Text(""),
                  message: Text("safariを起動しますか?"),
                  primaryButton: .default(Text("ok"),
                                          action: {
                                            self.isShowSafariAlert = false
//                                            guard let url = URL(string: self.viewModel.url) else {
//                                                return
//                                            }
//                                            UIApplication.shared.open(url)
                  }),
                  secondaryButton: .cancel(Text("キャンセル")))
        })
    }
}
