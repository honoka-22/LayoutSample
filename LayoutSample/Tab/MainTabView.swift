//
//  MainTabView.swift
//  LayoutSample
//
//  Created by cmStudent on 2022/12/15.
//

import SwiftUI

struct MainTabView: View {
    @EnvironmentObject var colors: AppColors
    
    init(){
        // TabViewの背景色の設定
        UITabBar.appearance()
            .backgroundColor = UIColor(colors.mainColor)
        // 非選択中のタブの色
        UITabBar.appearance()
            .unselectedItemTintColor = UIColor(colors.subAccentColor)
    }
    
    var body: some View {
        VStack {
            
        }
        HStack {
            Image(systemName: "house")
                .onTapGesture {
                    <#code#>
                }
            
            Image(systemName: "magnifyingglass")
                .onTapGesture {
                    <#code#>
                }
        }
        .background(colors.mainColor)
        .frame(width: SCREEN_WIDTH)
        
//        TabView() {
//            ColorCustomerView()
//                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
//                }.tag(0)
//
//            TransactionsPostView()
//                .tabItem {
//                    Image(systemName: "magnifyingglass")
//                    Text("Search")
//                }.tag(1)
//
//
//        }
        .accentColor(colors.accentColor) // 選択中のタブの色
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(AppColors()) 
    }
}
