//
//  AppColors.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/15.
//

import SwiftUI

class AppColors: ObservableObject {
    // 現在登録されている色
    @Published var mainColor: Color = .orange
    @Published var accentColor: Color = .white
    @Published var subAccentColor: Color = .gray
    // Pickerで選択されている色
    @Published var selectedMainColor: Color = .orange
    @Published var selectedAccentColor: Color = .white
    @Published var selectedSubAccentColor: Color = .gray
    
    
    init() {
        setStartColor(key: "mainColorData",
                      color: &mainColor,
                      selectedColor: &selectedMainColor)
        
        setStartColor(key: "accentColorData",
                      color: &accentColor,
                      selectedColor: &selectedAccentColor)
        
        setStartColor(key: "subAccentColorData",
                      color: &subAccentColor,
                      selectedColor: &selectedSubAccentColor)
        
    }
    
    
    // UserDefaultから取得したデータをセットする
    private func setStartColor(key: String, color: inout Color, selectedColor: inout Color) {
        
        let jsonDecoder = JSONDecoder()
        
        guard let colorData = UserDefaults.standard.data(forKey: key),
              let startColor = try? jsonDecoder.decode(Color.self, from: colorData) else {
            return
        }
        color = startColor
        selectedColor = color
    }

    
    func changeColors() {
        mainColor = selectedMainColor
        accentColor = selectedAccentColor
        subAccentColor = selectedSubAccentColor

        setColorData(color: mainColor, key: "mainColorData")
        setColorData(color: accentColor, key: "accentColorData")
        setColorData(color: subAccentColor, key: "subAccentColorData")
        
    }
    
    // colorをData型に変換して保存する
    private func setColorData(color: Color, key: String) {
        
        let jsonEncoder = JSONEncoder()

        guard let colorData = try? jsonEncoder.encode(color) else {
            return
        }

        UserDefaults.standard.set(colorData, forKey: key)
    }
    
}
