//
//  IconsPractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/15/24.
//

import SwiftUI

struct IconsPractice: View {
    var body: some View {
        Image(systemName: "flame")
            .font(.largeTitle)
            //.resizable() //프레임에 맞춰서 크기 변경
            //.aspectRatio(contentMode: .fill) //fill, fit
            //.scaledToFit()
            //.scaledToFill()
            //.font(.system(size: 100)) //사이즈 변경
            //.foregroundColor(.red) //색상 변경
            .frame(width: 100, height: 140) // 프레임 설정
            //.clipped() //프레임에 맞춰서 튀어나온 부분 자르기
    }
}

#Preview {
    IconsPractice()
}
