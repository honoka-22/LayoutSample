//
//  AlertView.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/08.
//

import SwiftUI

struct AlertView: View {
    @EnvironmentObject var colors: AppColors
    var rightText: String
    var rightAction: () -> ()
    var leftText: String
    var leftAction: () -> ()
    
    var body: some View {
        HStack(spacing: 0) {
            Button {
                rightAction()
            } label: {
                Text(rightText)
                    .padding()
                    .frame(width: (SCREEN_WIDTH - 20) / 2)
                    .foregroundColor(colors.mainColor)
            }
            
//            Divider()
            
            Button {
                leftAction()
            } label: {
                Text(leftText)
                    .padding()
                    .frame(width: (SCREEN_WIDTH - 20) / 2)
                    .background(colors.mainColor)
                    .foregroundColor(colors.accentColor)
            }
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView(
            rightText: "閉じる",
            rightAction: {
                
            },
            leftText: "登録",
            leftAction: {
                
            })
    }
}
