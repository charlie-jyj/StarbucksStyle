//
//  HomeView.swift
//  Cafe
//
//  Created by 정유진 on 2022/03/11.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 28.0) {
                HeaderView()
                MenuSuggestionSectionView()
                EventSectionView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
