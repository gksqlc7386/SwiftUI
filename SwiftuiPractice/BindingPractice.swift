//
//  BindingPractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/22/24.
//

import SwiftUI

struct BindingPractice: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title:String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    // @Binding : 다른 뷰에서 State로 선언된 상태변수를 사용하려고 하는 경우 사용
    // 즉, 하위 뷰의 변수를 상위 뷰에서 선언된 상태 변수에 연결하는 역할
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.yellow
    
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.blue
            buttonColor = Color.green
            title = "New Title"
        }, label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10.0)
        })
    }
}

#Preview {
    BindingPractice()
}
