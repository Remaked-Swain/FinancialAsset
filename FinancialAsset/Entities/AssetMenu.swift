//
//  AssetMenu.swift
//  FinancialAsset
//
//  Created by Swain Yun on 2023/02/24.
//

import Foundation

// GridView 내의 아이템이 사용하는 Properties 를 만들어두고 이를 switch 문으로 할당, 엔티티를 구성함
enum AssetMenu: String, Identifiable, Decodable {
    case creditScore
    case bankAccount
    case investment
    case loan
    case insurance
    case creditCard
    case cash
    case realEstate
    
    var id: String {
        return self.rawValue
    }
    
    var systemImageName: String {
        switch self {
        case .creditScore: return "number.circle"
        case .bankAccount: return "banknote"
        case .investment: return "bitcoinsign.circle"
        case .loan: return "hand.wave"
        case .insurance: return "lock.shield"
        case .creditCard: return "creditcard"
        case .cash: return "dollarsign.circle"
        case .realEstate: return "house.fill"
        }
    }
    
    var title: String {
        switch self {
        case .creditScore: return "신용점수"
        case .bankAccount: return "계좌"
        case .investment: return "투자"
        case .loan: return "대출"
        case .insurance: return "보험"
        case .creditCard: return "카드"
        case .cash: return "현금영수증"
        case .realEstate: return "부동산"
        }
    }
}
