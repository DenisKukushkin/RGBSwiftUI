//
//  ColorSliderView.swift
//  RGBSwiftUI
//
//  Created by Denis Kukushkin on 03.02.2023.
//

import SwiftUI

struct ColoredSliderView: View {
    @Binding var colorSliderValue: Double
    @State private var textFieldValue = ""
    
    var color: Color
    
    var body: some View {
        HStack {
            TextView(text: String(lround(colorSliderValue)))
            SliderView(sliderValue: $colorSliderValue, textFieldValue: $textFieldValue, color: color)
            ColorTextFieldView(numberValue: $colorSliderValue, textFieldValue: $textFieldValue)
        }
        .onAppear {
            textFieldValue = "\(lround(colorSliderValue))"
        }
    }
}

struct ColoredSliderView_previews: PreviewProvider {
    static var previews: some View {
        ColoredSliderView(colorSliderValue: .constant(100), color: .red)
    }
}
