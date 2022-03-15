//
//  MenuSuggestionSectionView.swift
//  Cafe
//
//  Created by 정유진 on 2022/03/11.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    @Binding var coffeeMenu: [CoffeeMenu]
    var body: some View {
        VStack{
            Text("\(User.shared.username)님을 위한 추천메뉴")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal,16.0)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(coffeeMenu) { menu in
                        MenuSuggestionItemView(coffeemenu: menu)
                    }
                }
                .padding(.horizontal,16.0)
            }
        }
       
    }
}

struct MenuSuggestionItemView: View {
    let coffeemenu: CoffeeMenu
    
    var body: some View {
        VStack {
            coffeemenu.image
                .resizable()
                .clipShape(Circle())
                .frame(width:100.0, height: 100.0)
            Text(coffeemenu.name)
                .font(.caption)
        }
    }
}

//struct MenuSuggestionSectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuSuggestionSectionView()
//    }
//}
