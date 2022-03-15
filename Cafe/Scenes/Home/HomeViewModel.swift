//
//  HomeViewModel.swift
//  Cafe
//
//  Created by 정유진 on 2022/03/15.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var isNeedToReload = false {
        didSet {
            guard isNeedToReload else { return }
            coffeeMenu.shuffle()
            events.shuffle()
            isNeedToReload = false
        }
    }
    @Published var coffeeMenu: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee", bundle: .main), name: "아메리카노"),
        CoffeeMenu(image: Image("coffee", bundle: .main), name: "돌체콜드브루"),
        CoffeeMenu(image: Image("coffee", bundle: .main), name: "자몽허니블랙티"),
        CoffeeMenu(image: Image("coffee", bundle: .main), name: "얼그레이티"),
        CoffeeMenu(image: Image("coffee", bundle: .main), name: "카페라떼"),
        CoffeeMenu(image: Image("coffee", bundle: .main), name: "에스프레소")
    ]
    @Published var events: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "오직 제주도에서만 만나볼 수 있는 음료의 풍미를 느껴보세요."),
        Event(image: Image("coffee"), title: "봄봄봄 봄맞이 디저트", description: "봄봄봄 봄이 왔어요. 함께 찾아온 달콤한 커피 타임")
    ]
}
