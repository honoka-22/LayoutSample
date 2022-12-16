//
//  TransactionsPostView.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/14.
//

import SwiftUI

struct TransactionsPostView: View {
    @EnvironmentObject var colors: AppColors
    let items1 = ["交換", "譲渡", "買取", "交換+譲渡", "交換+買取"]
    @State var selectItem1 = 0
    
    let items2 = ["郵送", "手渡し"]
    @State var selectItem2 = 0
    
    let items3 = ["HTML", "CSS", "PHP", "Swift", "C"]
    @State var selectItem3 = 0
    
    var body: some View {
        
        VStack {
            Text("お相手様 : 大貫様(@21cm0110)")
            HStack {
                PickerView(items: items1, selectItem: $selectItem1)
                
                PickerView(items: items2, selectItem: $selectItem2)
                
                
            }.frame(width: SCREEN_WIDTH - 20)
            
            HStack {
                PickerView(items: items3, selectItem: $selectItem3)
                Spacer()
            }.frame(width: SCREEN_WIDTH - 20)
            
            
            PostFieldView(title: "自分", isShowButton: true)
            Text("↑↓")
            PostFieldView(title: "相手", isShowButton: true)
            
            PostFieldView(title: "メモ", isShowButton: false)
                .padding(.top)
            ButtonStyleView(colors: self.colors, text: "登録") {
                
            }
        }
        
        
    }
}

struct TransactionsPostView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsPostView()
    }
}
