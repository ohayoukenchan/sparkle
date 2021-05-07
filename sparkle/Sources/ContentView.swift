//
//  ContentView.swift
//  sparkle
//
//  Created by ohayoukenchan on 2021/05/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Logo()
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("ままま書店")
                .font(.title)
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
        ContentView()
    }
}
