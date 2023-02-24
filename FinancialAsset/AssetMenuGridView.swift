//
//  AssetMenuGridView.swift
//  FinancialAsset
//
//  Created by Swain Yun on 2023/02/24.
//

import SwiftUI

struct AssetMenuGridView: View {
    let menuList: [[AssetMenu]] = [
        [.creditScore, .bankAccount, .investment, .loan],
        [.insurance, .creditCard, .cash, .realEstate]
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(menuList, id: \.self) { row in
                HStack(spacing: 10) {
                    ForEach(row) { item in
                        Button("") {
                            print("\(item.title)버튼 tapped")
                        }
                        .buttonStyle(AssetMenuButtonStyle(menu: item))
                    }
                }
            }
        }
    }
}

struct AssetMenuGridView_Previews: PreviewProvider {
    static var previews: some View {
        AssetMenuGridView()
    }
}
