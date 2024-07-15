//
//  ImagePractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/15/24.
//

import SwiftUI

struct ImagePractice: View {
    var body: some View {
        Image("waves")
            .resizable()
            .frame(width: 300, height: 200)
            //.aspectRatio(contentMode: .fill)
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .scaledToFill()
            //.clipped()
            //.cornerRadius(30) //모서리 둥글게
            .clipShape( //도형 모양으로 자르기
                Circle()
                //RoundedRectangle(cornerRadius: 25.0)
                //Ellipse()
            )
    }
}

#Preview {
    ImagePractice()
}
