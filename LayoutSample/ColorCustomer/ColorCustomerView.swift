//
//  ColorCustomerView.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/07.
//

import SwiftUI

struct ColorCustomerView: View {
    @EnvironmentObject var colors: AppColors
    @State var isShow = false
    
    
    var body: some View {
        if isShow {
            ChangeColorsView(isShow: $isShow)
                .padding()
        } else {
            ButtonStyleView(colors: colors, text: "色を変更する") {
                self.isShow = true
            }
        }
    }
}

struct ColorCustomerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCustomerView()
            .environmentObject(AppColors())
    }
}
