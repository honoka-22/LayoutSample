//
//  TagCell.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/14.
//

import SwiftUI

struct TagCell: View {
    var text: String = "tag"
    var body: some View {
        Text("#" +  text)
            .padding()
            .background()
            .foregroundColor(.white)
    }
}

struct TagCell_Previews: PreviewProvider {
    static var previews: some View {
        TagCell(text: "tag")
    }
}
