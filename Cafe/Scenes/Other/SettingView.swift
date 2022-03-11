//
//  SettingView.swift
//  Cafe
//
//  Created by 정유진 on 2022/03/11.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List{
            Section {
                SettingUserInfoSectionView()
            }
            Button(action: {}) {
                Text("회원 정보 수정")
                    .accentColor(.black)
            }
            Button(action: {}) {
                Text("회원 탈퇴")
                    .accentColor(.black)
            }
        }
            .listStyle(.grouped)
            .navigationTitle("설정")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingUserInfoSectionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(User.shared.username)
                    .font(.title)
                Text(User.shared.account)
                    .font(.caption)
            }
            Spacer()
            Button(action:{}) {
                Text("로그아웃")
                    .accentColor(.green)
                    .font(.system(size: 14.0, weight: .bold, design: .default))
                    .padding(8.0)  // 순서 주의
                    .overlay(Capsule().stroke(Color.green))
            }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
