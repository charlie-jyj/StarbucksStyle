//
//  CoffeeMenu.swift
//  Cafe
//
//  Created by 정유진 on 2022/03/11.
//

import SwiftUI

struct CoffeeMenu: Identifiable {
    let id = UUID()
    let image: Image
    let name: String
    
    static let sample: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee", bundle: .main), name: "아메리카노"),
        CoffeeMenu(image: Image("coffee", bundle: .main), name: "돌체콜드브루"),
        CoffeeMenu(image: Image("coffee", bundle: .main), name: "자몽허니블랙티"),
        CoffeeMenu(image: Image("coffee", bundle: .main), name: "얼그레이티"),
        CoffeeMenu(image: Image("coffee", bundle: .main), name: "카페라떼"),
        CoffeeMenu(image: Image("coffee", bundle: .main), name: "에스프레소")
    ]
}
