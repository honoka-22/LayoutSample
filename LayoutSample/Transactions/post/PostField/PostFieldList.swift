//
//  PostFieldList.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/14.
//

import SwiftUI

struct PostFieldList: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 5) {
                ForEach(0..<10) { post in
                    PostFieldCell()
                    
                }
                Spacer()
            }
        }
    }
}

struct PostFieldList_Previews: PreviewProvider {
    static var previews: some View {
        PostFieldList()
    }
}
