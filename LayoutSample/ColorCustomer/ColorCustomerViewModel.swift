//
//  ColorCustomerViewModel.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/07.
//

import SwiftUI

class ColorCustomerViewModel: ObservableObject {
//    @Published var backgroundColor:Color = Color.red
    @Published var selectedColor:Color = Color.red
    


    init() {
        let jsonDecoder = JSONDecoder()

        guard let colorData = UserDefaults.standard.data(forKey: "colorData"),
              let startColor = try? jsonDecoder.decode(Color.self, from: colorData) else {
            return
            
        }
        
        backgroundColor = startColor
        selectedColor = backgroundColor
    }

    
    func changeBGColor() {
        backgroundColor = selectedColor

        // colorをData型に変換して保存する
        let jsonEncoder = JSONEncoder()

        guard let colorData = try? jsonEncoder.encode(backgroundColor) else {
            return
        }

        UserDefaults.standard.set(colorData, forKey: "colorData")
    }
}
