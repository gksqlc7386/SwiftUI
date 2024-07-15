//
//  ColorsPractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/14/24.
//

import SwiftUI

struct ColorsPractice: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(
                //Color.orange
                //colorLiteral은 13 이후로 지원하지 않음
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 200, height: 100)
            //.shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .shadow(color: Color("CustomColor"), radius: 20, x: 6, y: 6)
    }
}

#Preview {
    ColorsPractice()
}
