//
//  TextView.swift
//  RGBSwiftUI
//
//  Created by Denis Kukushkin on 03.02.2023.
//

import SwiftUI

struct TextView: View {
    let value: String
    
    var body: some View {
        Text(value)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(value: "123")
    }
}
