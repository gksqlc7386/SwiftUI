//
//  FramePractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/15/24.
//

import SwiftUI

struct FramePractice: View {
    var body: some View {
        Text("Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World! Hello, World!")
            .background(Color.green)
//            .frame(width: 300, height: 300, alignment: .center)
//            .background(Color.blue)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
    }
}

#Preview {
    FramePractice()
}
