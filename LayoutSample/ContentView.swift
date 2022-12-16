//
//  ContentView.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainTabView()
            .environmentObject(AppColors())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppColors())
    }
}
