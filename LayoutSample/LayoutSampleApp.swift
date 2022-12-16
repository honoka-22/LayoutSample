//
//  LayoutSampleApp.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/07.
//

import SwiftUI

@main
struct LayoutSampleApp: App {
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(AppColors())
        }
    }
    
}
