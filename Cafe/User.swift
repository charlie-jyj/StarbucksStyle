//
//  User.swift
//  Cafe
//
//  Created by 정유진 on 2022/03/11.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    let username: String
    let account: String
    
    static let shared = User(username: "유진", account: "jinie.com")
}
