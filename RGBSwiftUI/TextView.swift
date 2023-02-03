//
//  TextView.swift
//  RGBSwiftUI
//
//  Created by Denis Kukushkin on 03.02.2023.
//

import SwiftUI

struct TextView: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "123")
    }
}
