//
//  ButtonStyleView.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/07.
//

import SwiftUI

struct ButtonStyleView: View {
    let colors: AppColors
    var text: String =  "sample"
    let action: () -> ()
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .font(.title)
//                .fontWeight(.bold)
                .padding()
                .frame(width: SCREEN_WIDTH / 3 * 2)
                .foregroundColor(colors.accentColor)
                .background(colors.mainColor)
                .clipShape(Capsule())
                .padding()
        }
    }
}

//struct ButtonStyleView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonStyleView(text: "sample"){}
//    }
//}
