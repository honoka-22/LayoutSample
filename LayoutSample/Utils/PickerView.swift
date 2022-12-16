//
//  PickerView.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/07.
//

import SwiftUI

struct PickerView: View {
    let width = (SCREEN_WIDTH - 30) / 2
    let height = (SCREEN_WIDTH - 20) / 10
    let items: [String]
    var action: () -> () = {}
    @Binding var selectItem: Int
    
    var body: some View {
        VStack {
            Menu {
                ForEach(items, id: \.self) { item in
                    //
                    Button {
                        selectItem = items.firstIndex(of: item) ?? 0
                        action()
                    } label: {
                        Text(item)
                    }
                }
            } label: {
                HStack {
                    Text(items[selectItem])
                        .padding(.leading)
                    Spacer()
                    Text("▼")
                        .padding(.trailing)
                }
                .frame(width: width, height: height)
                .foregroundColor(.black)
                .background(.white)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.brown, lineWidth: 1))
            }
        }
        

    }
}

//struct PickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        PickerView()
//    }
//}
