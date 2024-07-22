//
//  StatePractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/22/24.
//

import SwiftUI

struct StatePractice: View {
    
    //@State : 뷰에게 변수의 상태를 관찰하라고 지시
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .yellow
                        myTitle = "Button1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .red
                        myTitle = "Button2 was pressed"
                        count -= 1
                    }
                }
            }
        }
    }
}

#Preview {
    StatePractice()
}
