//
//  FramePractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/15/24.
//

import SwiftUI

struct FramePractice: View {
    var body: some View {
//        Text("Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World!")
//            .background(Color.green)
////            .frame(width: 300, height: 300, alignment: .center)
////            .background(Color.blue)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//            .background(Color.blue)
        Text("Hello, World!")
            .background(Color.red)
            .frame(height: 100)
            .background(Color.orange)
            .frame(width: 300)
            .background(Color.yellow)
            .frame(width: 360)
            .background(Color.green)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .frame(height: 400)
            .background(Color.indigo)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

#Preview {
    FramePractice()
}
