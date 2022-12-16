//
//  PostFieldView.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/14.
//

import SwiftUI

struct PostFieldView: View {
    var title: String = "title"
    var isShowButton: Bool = true
    var body: some View {
        VStack(spacing: 1) {
            HStack {
                Text(title)
                    .padding(.leading)
                Spacer()
            }
            ZStack {
                VStack {
                    PostFieldList()
                }
                
                if isShowButton {
                    // 右下固定
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            PlusButtonView() {
                                
                            }.padding()
                        }
                    }
                }
                
                
            }
            .frame(width: SCREEN_WIDTH - 20,
                   height: SCREEN_HEIGHT / (isShowButton ? 6 : 7))
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.brown, lineWidth: 1))
        }
        
    }
}

struct PostFieldView_Previews: PreviewProvider {
    static var previews: some View {
        PostFieldView(
            title: "title",
            isShowButton: true)
    }
}
