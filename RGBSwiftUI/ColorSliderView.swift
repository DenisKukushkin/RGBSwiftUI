//
//  ColorSliderView.swift
//  RGBSwiftUI
//
//  Created by Denis Kukushkin on 03.02.2023.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var colorSliderValue: Double
    
    var color: Color
    
    var body: some View {
        HStack {
            TextView(text: String(lround(colorSliderValue)))
            SliderView(sliderValue: $colorSliderValue, color: color)
            ColorTextFieldView(textFieldValue: .constant(""))
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(colorSliderValue: .constant(100), color: .red)
    }
}
