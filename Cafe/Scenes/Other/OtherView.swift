//
//  OtherView.swift
//  Cafe
//
//  Created by 정유진 on 2022/03/11.
//

import SwiftUI

struct OtherView: View {
    
    init() {
        UITableView.appearance().backgroundColor = .systemBackground
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(Menu.allCases){ section in
                    Section(header: Text(section.title)){
                        ForEach(section.menu, id: \.self) { menu in
                            NavigationLink(destination: Text(menu)) { Text(menu) }
                        }
                    }
                    
                }
            }
                .listStyle(.grouped)
                .navigationTitle("Other")
                .toolbar {
                    NavigationLink(destination: SettingView()){
                        Image(systemName: "gear")
                    }
                }
        }
        
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
