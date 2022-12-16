//
//  ChangeColorsView.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/07.
//

import SwiftUI

struct ChangeColorsView: View {
    @EnvironmentObject var colors: AppColors
    @Binding var isShow: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            ColorPicker("メインカラー",
                        selection : $colors.selectedMainColor,
                        supportsOpacity: false)
                .padding()
            
            ColorPicker("メインアクセントカラー",
                        selection : $colors.selectedAccentColor,
                        supportsOpacity: false)
                .padding()
            
            ColorPicker("サブアクセントカラー",
                        selection : $colors.selectedSubAccentColor,
                        supportsOpacity: false)
                .padding()
            
            Divider()
            
            AlertView(
                rightText: "閉じる",
                rightAction: {
                    isShow = false
                },
                leftText: "変更",
                leftAction: {
                    colors.changeColors()
                })
            
            
        }
        .background(Color.white)
        .overlay(RoundedRectangle(cornerRadius: 24)
            .stroke(colors.subAccentColor, lineWidth: 1))
        .cornerRadius(24)
    }
}

//struct ChangeColorsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChangeColorsView()
//    }
//}
