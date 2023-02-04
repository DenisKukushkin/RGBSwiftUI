//
//  SliderView.swift
//  RGBSwiftUI
//
//  Created by Denis Kukushkin on 03.02.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    @Binding var textFieldValue: String

    var color: Color
    
    var body: some View {
        Slider(value: $sliderValue, in: 0...255, step: 1)
            .accentColor(color)
            .onChange(of: sliderValue) { newSliderValue in
                textFieldValue = "\(lround(newSliderValue))"
            }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(80), textFieldValue: .constant(""), color: .indigo)
    }
}
