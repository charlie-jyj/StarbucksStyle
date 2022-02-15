//
//  Tab.swift
//  Cafe
//
//  Created by UAPMobile on 2022/02/15.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    var textItem: Text {
        switch self {
        case .home: return Text("Home")
        case .other: return Text("Other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .other: return Image(systemName: "ellipsis")
        }
    }
    
}
