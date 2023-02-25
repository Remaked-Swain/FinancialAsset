//
//  BannerCard.swift
//  FinancialAsset
//
//  Created by Swain Yun on 2023/02/25.
//

import SwiftUI

struct BannerCard: View {
    var banner: AssetBanner
    
    var body: some View {
        ZStack {
            Color(banner.backgroundColor)
            
            VStack {
                Text(banner.title)
                    .font(.title)
                Text(banner.description)
                    .font(.subheadline)
            }
        }
        
//        Color(banner.backgroundColor)
//            .overlay(
//                VStack {
//                    Text(banner.title)
//                        .font(.title)
//                    Text(banner.description)
//                        .font(.subheadline)
//                }
//            )
    }
}

struct BannerCard_Previews: PreviewProvider {
    static var previews: some View {
        let testBanner = AssetBanner(title: "공지사항", description: "추가된 공지사항을 확인하세요", backgroundColor: .cyan)
        
        BannerCard(banner: testBanner)
    }
}
