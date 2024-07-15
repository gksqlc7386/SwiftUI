//
//  TextPractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/14/24.
//

import SwiftUI

struct TextPractice: View {
    var body: some View {
        Text(
            "Hello, World! \n Hello, world! Hello, world!\n Hello, world! Hello, world!"
                .capitalized // 모든 글자 맨 앞을 자동으로 대문자로 바꾸기
        )
            .multilineTextAlignment(.center) //글자 정렬
            .background(Color.green) //배경 색
            .foregroundColor(.white) //글자 색
            .baselineOffset(8) //줄 간격
            .kerning(4) //글자 사이 간격
            .frame(width: 400, height: 200, alignment: .center) // 특정 영역 설정 여기서 정렬은 프레임 정렬
            .minimumScaleFactor(0.5) //영역에 맞춰서 50퍼센트까지 글씨 크기 줄이기 (50퍼센트를 넘으면 ...으로 표시)
    }
}

#Preview {
    TextPractice()
}
