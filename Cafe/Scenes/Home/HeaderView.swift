//
//  HeaderView.swift
//  Cafe
//
//  Created by 정유진 on 2022/03/11.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(spacing:16.0){
            HStack(alignment:.top){
                Text("\(User.shared.username)님,\n반갑습니다!☕️")
                    .font(.largeTitle)
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
                Button(action: {}) {
                Image(systemName: "arrow.2.circlepath")
                    .foregroundColor(Color.green)
                }
            }
            HStack{
                Button(action:{}){
                Image(systemName: "creditcard")
                    .foregroundColor(Color.gray)
                Text("What's New")
                    .foregroundColor(Color.primary)
                    .font(.system(size:16.0, weight: .semibold, design: .default))
                }
                Button(action:{}){
                Image(systemName: "giftcard")
                    .foregroundColor(Color.gray)
                Text("Coupon")
                    .foregroundColor(Color.primary)
                    .font(.system(size:16.0, weight: .semibold, design: .default))
                }
                Spacer()
                Button(action:{}){
                    Image(systemName: "bell")
                        .foregroundColor(Color.gray)
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding(16.0)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
