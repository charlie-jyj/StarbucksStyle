//
//  HomeView.swift
//  Cafe
//
//  Created by 정유진 on 2022/03/11.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    var body: some View {
        ScrollView{
            VStack(spacing: 28.0) {
                HeaderView(isNeedToReload: $viewModel.isNeedToReload)
                MenuSuggestionSectionView(coffeeMenu: $viewModel.coffeeMenu)
                EventSectionView(events: $viewModel.events)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
