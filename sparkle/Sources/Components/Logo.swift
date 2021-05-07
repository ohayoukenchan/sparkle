//
//  Logo.swift
//  sparkle
//
//  Created by ohayoukenchan on 2021/05/06.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        Image("Mamama")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 3)
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
