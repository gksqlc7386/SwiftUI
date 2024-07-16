//
//  StacksPractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/16/24.
//

import SwiftUI

struct StacksPractice: View {
    
    // VStacks -> Vertical
    // HStacks -> Horizontal
    // ZStacks -> zIndex (back to front)
    
    var body: some View {
//        VStack {
//            RoundedRectangle(cornerRadius: 10.0)
//                .fill(Color.yellow)
//                .frame(width: 100, height: 50)
//            RoundedRectangle(cornerRadius: 10.0)
//                .fill(Color.blue)
//                .frame(width: 100, height: 50)
//            RoundedRectangle(cornerRadius: 10.0)
//                .fill(Color.green)
//                .frame(width: 100, height: 50)
//        }
        
        
//        HStack {
//            RoundedRectangle(cornerRadius: 10.0)
//                .fill(Color.yellow)
//                .frame(width: 100, height: 50)
//            RoundedRectangle(cornerRadius: 10.0)
//                .fill(Color.blue)
//                .frame(width: 100, height: 50)
//            RoundedRectangle(cornerRadius: 10.0)
//                .fill(Color.green)
//                .frame(width: 100, height: 50)
//        }

        
//        ZStack {
//            RoundedRectangle(cornerRadius: 10.0) //맨 밑에 위치
//                .fill(Color.yellow)
//                .frame(width: 150, height: 150)
//            
//            RoundedRectangle(cornerRadius: 10.0)
//                .fill(Color.blue)
//                .frame(width: 100, height: 100)
//            
//            RoundedRectangle(cornerRadius: 10.0) //맨 위에 위치
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//        }
        
        
        // MARK: - Alignment
        
//        VStack(alignment: .trailing, spacing: 30, content: {
//            RoundedRectangle(cornerRadius: 10.0)
//                .fill(Color.yellow)
//                .frame(width: 200, height: 100)
//            RoundedRectangle(cornerRadius: 10.0)
//                .fill(Color.blue)
//                .frame(width: 150, height: 75)
//            RoundedRectangle(cornerRadius: 10.0)
//                .fill(Color.green)
//                .frame(width: 100, height: 50)
//        })
        
        
//        HStack(alignment: .bottom, spacing: 30, content: {
//            RoundedRectangle(cornerRadius: 5)
//                .fill(Color.yellow)
//                .frame(width: 150, height: 75)
//            RoundedRectangle(cornerRadius: 5)
//                .fill(Color.blue)
//                .frame(width: 100, height: 50)
//            RoundedRectangle(cornerRadius: 5)
//                .fill(Color.green)
//                .frame(width: 50, height: 25)
//        })
        
        
//        ZStack(alignment: .topLeading, content: {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 200, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//        })
        
        
        // MARK: - 연습
        
//        ZStack (alignment: .topLeading) {
//            Rectangle()
//                .fill(Color.mint)
//                .frame(width: 350, height: 500, alignment: .center)
//            VStack(alignment: .leading) {
//                Rectangle()
//                    .fill(Color.yellow)
//                    .frame(width: 200, height: 100)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 150, height: 75)
//                HStack(alignment: .top) {
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 50, height: 100)
//                    Rectangle()
//                        .fill(Color.teal)
//                        .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(Color.indigo)
//                        .frame(width: 50, height: 50)
//                }
//                .background(Color.black)
//            }
//            .background(Color.white)
//        }
        
        
//        HStack(alignment: .bottom) {
//            Text("Item in your cart: ")
//                .font(.caption)
//                .foregroundStyle(Color.gray)
//            Text("10")
//                .font(.largeTitle)
//        }
        
        
//        VStack(alignment: .center, spacing: 10) {
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            Text("Item in your cart")
//                .font(.caption)
//                .foregroundStyle(Color.gray)
//        }
        
        VStack(spacing: 50) { //다양한 방식으로 동일한 모양을 만들 수 있음
            //ver 1
            ZStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.title)
                    .foregroundStyle(Color.white)
            }
            
            //ver 2
            Text("1")
                .font(.title)
                .foregroundStyle(Color.white)
                .background(
                    Circle()
                        .fill(Color.yellow)
                        .frame(width: 100, height: 100)
                )
            
        }
    }
}

#Preview {
    StacksPractice()
}
