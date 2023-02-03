//
//  TextFieldView.swift
//  RGBSwiftUI
//
//  Created by Denis Kukushkin on 03.02.2023.
//

import SwiftUI

struct ColorTextFieldView: View {
    @Binding var textFieldValue: String
    
    var body: some View {
        TextField("color", text: $textFieldValue)
            .overlay(RoundedRectangle(cornerRadius: 3)
                .stroke(lineWidth: 1)
                .foregroundColor(.blue)
            )
            .frame(width: 50)
            .multilineTextAlignment(.center)
    }
}

struct ColorTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextFieldView(textFieldValue: .constant("123"))
    }
}
