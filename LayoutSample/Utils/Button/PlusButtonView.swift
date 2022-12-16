//
//  PlusButtonView.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/14.
//

import SwiftUI

struct PlusButtonView: View {
    let action: () -> ()
    var body: some View {
        Button {
            action()
        } label: {
            Text("+")
                .frame(width: 40, height: 40)
                .font(.title)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Circle())
        }
    }
}

struct PlusButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PlusButtonView(){}
    }
}
