//
//  ShapesPractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/14/24.
//

import SwiftUI

struct ShapesPractice: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//        Rectangle()
//        Capsule() //캡슐모양
//        Ellipse() //타원
//        Circle() //원
//            //.fill(Color.gray) //원 채우기
            .foregroundColor(.green)
//            //.stroke() //테두리
//            //.stroke(Color.red)
//            //.stroke(Color.orange, lineWidth: 30)
//            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [50]))
//            .trim(from: 0.3, to: 1.0) //원 자르기
//            .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 30) //자른 원에 테두리 추가해서 새로운 스타일 생성 가능
            .frame(width: 200, height: 300)
    }
}

#Preview {
    ShapesPractice()
}
