//
//  GradientPractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/14/24.
//

import SwiftUI

struct GradientPractice: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                LinearGradient(
//                    colors: [Color.blue, Color.green, Color.yellow],
//                    startPoint: .leading,
//                    endPoint: .trailing)
//                RadialGradient(
//                    colors: [Color.blue, Color.green],
//                    center: .topLeading,
//                    startRadius: 20,
//                    endRadius: 300)
                AngularGradient(
                    colors: [Color.blue, Color.green],
                    center: .topLeading,
                    angle: .degrees(180+45))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientPractice()
}
