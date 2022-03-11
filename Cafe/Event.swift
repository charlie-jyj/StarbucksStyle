//
//  Event.swift
//  Cafe
//
//  Created by 정유진 on 2022/03/11.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    let image: Image
    let title: String
    let description: String
    
    static let sample: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "오직 제주도에서만 만나볼 수 있는 음료의 풍미를 느껴보세요."),
        Event(image: Image("coffee"), title: "봄봄봄 봄맞이 디저트", description: "봄봄봄 봄이 왔어요. 함께 찾아온 달콤한 커피 타임")
    ]
}
