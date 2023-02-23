//
//  ContentView.swift
//  FinancialAsset
//
//  Created by Swain Yun on 2023/02/23.
//

import SwiftUI

struct ContentView: View {
    enum Tab {
        case asset
        case recommend
        case alert
        case setting
    }
    
    @State private var selection: Tab = .asset
    
    var body: some View {
        TabView(selection: $selection) {
            Color.white
                .tabItem {
                    Label("자산", systemImage: "dollarsign.circle.fill")
                }
                .tag(Tab.asset)
            
            Color.blue
                .tabItem {
                    Label("추천", systemImage: "hand.thumbsup.fill")
                }
                .tag(Tab.recommend)
            
            Color.yellow
                .tabItem {
                    Label("알림", systemImage: "bell.fill")
                }
                .tag(Tab.alert)
            
            Color.red
                .tabItem {
                    Label("설정", systemImage: "gearshape.fill")
                }
                .tag(Tab.setting)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
