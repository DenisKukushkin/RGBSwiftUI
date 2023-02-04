//
//  ChangeColorView.swift
//  RGBSwiftUI
//
//  Created by Denis Kukushkin on 03.02.2023.
//

import SwiftUI

struct ChangeColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 120)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 5)
                .foregroundColor(.indigo))
            .foregroundColor(Color(red: red / 255, green: green / 255, blue: blue / 255))
    }
}

struct ChangeColorView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorView(red: 10, green: 155, blue: 46)
    }
}
