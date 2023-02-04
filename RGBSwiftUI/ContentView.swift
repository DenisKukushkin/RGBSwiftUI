//
//  ContentView.swift
//  RGBSwiftUI
//
//  Created by Кукушкин Денис Сергеевич on 03.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        VStack (spacing: 40) {
                ChangeColorView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
            VStack (spacing: 20) {
                ColorSliderView(colorSliderValue: $redSliderValue, color: .red)
                ColorSliderView(colorSliderValue: $greenSliderValue, color: .green)
                ColorSliderView(colorSliderValue: $blueSliderValue, color: .blue)
            }
            Spacer()

            }
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
