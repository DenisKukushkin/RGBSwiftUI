//
//  TextFieldView.swift
//  RGBSwiftUI
//
//  Created by Denis Kukushkin on 03.02.2023.
//

import SwiftUI

struct TextFieldView: View {
    @State private var sliderValue = "0"
    
    var body: some View {
        TextField("color", text: $sliderValue)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .overlay(RoundedRectangle(cornerRadius: 3)
                .stroke(lineWidth: 1)
                .foregroundColor(.blue)
            )
            .shadow(color: .gray, radius: 2)
            .padding()

    
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
