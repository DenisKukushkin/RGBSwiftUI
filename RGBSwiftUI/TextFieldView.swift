//
//  TextFieldView.swift
//  RGBSwiftUI
//
//  Created by Denis Kukushkin on 03.02.2023.
//

import SwiftUI

struct ColorTextFieldView: View {
    @Binding var numberValue: Double
    @Binding var textFieldValue: String
    @State private var alertIsOn = false
    
    var body: some View {
        TextField("color", text: $textFieldValue) { _ in
            checkNumberValue()
        }
            .overlay(RoundedRectangle(cornerRadius: 3)
                .stroke(lineWidth: 1)
                .foregroundColor(.blue)
            )
            .frame(width: 50)
            .multilineTextAlignment(.center)
            .alert("Wrong Format", isPresented: $alertIsOn, actions: {}) {
                Text("Please enter value from 0 to 255")
            }
    }
    
    private func checkNumberValue() {
        guard let numberValue = Int(textFieldValue) else {
            alertIsOn.toggle()
            self.numberValue = 0
            textFieldValue = "0"
            return
        }
        guard numberValue > -1 && numberValue < 256 else {
            alertIsOn.toggle()
            self.numberValue = 0
            textFieldValue = "0"
            return
        }
        self.numberValue = Double(numberValue)
    }
}

struct ColorTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextFieldView(numberValue: .constant(10), textFieldValue: .constant("10"))
    }
}
